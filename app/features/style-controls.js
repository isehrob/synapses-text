// block styles

import React from 'react';
import { StyleButton } from '../components/buttons';
import { BLOCK_TYPES, HEADER_TYPES, INLINE_STYLES } from '../utils/meta';



export const BlockStyleControls = (props) => {
    const {editorState} = props;
    const selection = editorState.getSelection();
    const blockType = editorState
      .getCurrentContent()
      .getBlockForKey(selection.getStartKey())
      .getType();

    return (
        <div className={"RichEditor-controls " + props.className} style={props.extraStyle}>
            {BLOCK_TYPES.map((type, i) =>
                <StyleButton
                    key={type.label}
                    active={type.style === blockType}
                    onToggle={props.onToggle}
                    style={type.style}
                    tooltip={type.tooltip}
                >
                    <type.label key={i} />
                </StyleButton>
            )}
            <select onChange={props.onToggle} value={blockType} >
                {HEADER_TYPES.map((elem, i) =>
                    <option
                        key={i}
                        value={elem.style}
                        className={elem.style}
                    >{elem.label}</option>
                )}
            </select>
        </div>
    );
};


export const InlineStyleControls = (props) => {
    var currentStyle = props.editorState.getCurrentInlineStyle();
    return (
        <div className={"RichEditor-controls " + props.className} style={props.extraStyle}>
            {INLINE_STYLES.map((type, i) =>
            <StyleButton
                key={type.label}
                active={currentStyle.has(type.style)}
                onToggle={props.onToggle}
                style={type.style}
                tooltip={type.tooltip}
            >
                <type.label key={i} />
            </StyleButton>
            )}
        </div>
    );
};
