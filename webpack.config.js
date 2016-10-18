// webpack configuration file

var webpack = require('webpack');
var path = require('path');
var HtmlwebpackPlugin = require('html-webpack-plugin');
var merge = require('webpack-merge');

var pkg = require('./package.json');

const Clean = require('clean-webpack-plugin');
const ExtractTextPlugin = require('extract-text-webpack-plugin');


const TARGET = process.env.npm_lifecycle_event;
// we instruct babel with this setting
process.env.BABEL_ENV = TARGET;

const PATHS = {
	app: path.join(__dirname, 'app/'),
	build: path.join(__dirname, 'build')
};

var common = {
	entry: {
    	app: PATHS.app + 'app.js',
  },
	output: {
		path: PATHS.build,
		filename: '[name].js'
	},
	// externals: {
 //        // require("jquery") is external and available
 //        //  on the global var jQuery
 //        "jquery": "jQuery"
 //  },
	// with this we can write like this: import x from 'index' without extintion
	resolve: {
		extensions: ['', '.js', '.jsx']
	},
	module: {
		loaders: [
			{
				// jsx functionality
				test: /\.jsx?$/,
				loader: 'babel-loader',
				includes: PATHS.app,
				// babel configuration goes below
				// for some reason can't get it work in .babelcr
				query: {
		          presets: ['es2015', 'react'],
		          plugins: [
				    "syntax-class-properties",
				    "syntax-decorators",
				    "syntax-object-rest-spread",
				    "transform-class-properties",
				    "transform-decorators-legacy",
				    "transform-object-rest-spread"
				  ]
		        }
			}
		]
	}
};

// development specific settings
if(TARGET === 'start'|| !TARGET) {
	config = merge(common, {
	    // change this to work on the project you want
	    entry: PATHS.app + 'app.js',
		// module: {
		// 	loaders: [
		// 		{
		// 			// css functionality or whatever
		// 			test: /\.css$/,
		// 			loaders: ['style', 'css'],
		// 			includes: PATHS.app
		// 		}
		// 	]
		// },
		devServer: {
			devtool: 'eval-source-map',
			historyApiFallback: true,
			hot: true,
			inline: true,
			progress: true,
			stats: 'errors-only',
			host: process.env.HOST,
			port: process.env.PORT
		},
		plugins: [
			new webpack.HotModuleReplacementPlugin(),

			new HtmlwebpackPlugin({
				title: 'Not translator',
				template: './index.html',
			  	appMountId: 'app'
			})
		]
	});
}
// else production settings
else if(TARGET === 'build') {
	config = merge(common, {
		entry: {
			vendor: Object.keys(pkg.dependencies).filter(function(v){
				return v;
			})
		},
		// output: {
		// 	path: PATHS.build,
		// 	filename: '[name].[chunkhash].js',
		// 	chunkFilename: '[chunkhash].js'
		// },
		module: {
			loaders: [
				{
					// css functionality or whatever
					test: /\.css$/,
					loader: ExtractTextPlugin.extract('style', 'css'),
					include: PATHS.app
				}
			]
		},
		plugins: [
			new Clean([PATHS.build]),
			new ExtractTextPlugin('styles.css'),
			new webpack.optimize.CommonsChunkPlugin({
				names: ['vendor', 'manifest']
			}),
			new webpack.DefinePlugin({
				'process.env.NODE_ENV': JSON.stringify('production')
			}),
			new webpack.optimize.UglifyJsPlugin({
				compress: {
					warnings: false
				},
				// mangle: {
			 //        except: ['$super', '$', 'exports', 'require']
			 //    }
			}),
		]
	});
}
module.exports = config;
