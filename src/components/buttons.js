// components

import React from 'react';


export class StyleButton extends React.Component {
    
    constructor() {
        super();
        this.onToggle = (e) => {
            e.preventDefault();
            this.props.onToggle(this.props.style);
        };

        this.state = {
            showTooltip: false
        };

        this.toggleTooltip = (e) => this.setState({showTooltip: !this.state.showTooltip})
    }

    render() {
        let className = 'RichEditor-styleButton';
        if (this.props.active) {
            className += ' RichEditor-activeButton';
        }

        // in order to ease the distance between numbers using log
        let width = Math.log10(this.props.tooltip.length) * 100;

        return (
            <span className={className} 
                onMouseDown={this.onToggle} 
                onMouseEnter={this.toggleTooltip}
                onMouseLeave={this.toggleTooltip}
                >
                    {this.props.children}
                    {this.state.showTooltip ? 
                        <span className="tooltiptext" 
                            style={{width: width}}>{this.props.tooltip}</span> : null
                    }
            </span>
        );
    }
}

export class SpecialButton extends React.Component {

    constructor() {
        super();

        this.state = {
            showTooltip: false
        };

        this.toggleTooltip = (e) => this.setState({showTooltip: !this.state.showTooltip})
    }

    render() {

        // in order to ease the distance between numbers using log
        let width = Math.log10(this.props.tooltip.length) * 100;

        return (
            <span className='RichEditor-styleButton' 
                onMouseDown={this.props.mouseDownCallback} 
                onMouseEnter={this.toggleTooltip}
                onMouseLeave={this.toggleTooltip}
                style={this.props.extraStyle}
                >
                    {this.props.children}
                    {this.state.showTooltip ? 
                        <span className="tooltiptext"
                            style={{width: width}}>{this.props.tooltip}</span> : null
                    }
            </span>
        );
    }
}