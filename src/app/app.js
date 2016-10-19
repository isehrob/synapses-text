// answer-page

import React from 'react';
import ReactDOM from 'react-dom';
import SynapsesTextEditor from './index.js';



const App = (props) => {
	return (
		<div className="row">
			<div className="col-md-10 col-main">
				<SynapsesTextEditor />
			</div>
			<div className="col-md-2 col-right">
			</div>
			<div className="clearfix"></div>
		</div>
	);
}


ReactDOM.render(
	<App />,
	document.getElementById('app-root')
);
