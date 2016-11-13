// tools

import React from 'react';


export default class AffixWrapper extends React.Component {

	static propTypes = {
    	offset: React.PropTypes.number
  	}

  	constructor (props) {
  		super(props);

  		this.state = { affix: false };

  		this.handleScroll = () => this._handleScroll();
  	}

	// getDefaultProps() {
 //    	return {
 //      		offset: 0
 //    	};
 //  	}


  	_handleScroll() {
	    var affix = this.state.affix;
	    var offset = this.props.offset;
	    var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;

	    if (!affix && scrollTop >= offset) {
	      	this.setState({
	        	affix: true
	      	});
	    }

	    if (affix && scrollTop < offset) {
	      	this.setState({
	        	affix: false
	      	});
	    }
  	}


	componentDidMount() {
		window.addEventListener('scroll', this.handleScroll);
	}


	componentWillUnmount() {
    	window.removeEventListener('scroll', this.handleScroll);
	}

	render() {
		var affix = this.state.affix ? 'affix' : '';
		var {className, offset, ...props} = this.props;

		return (
			<div {...props} className={className + ' ' + affix}>
				{this.props.children}
			</div>
		);
	}

}
