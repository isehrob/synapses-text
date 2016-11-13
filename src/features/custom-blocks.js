// custom-block-compoenents


import React from 'react';
import Draft from 'draft-js';
import { Map } from 'immutable';
import { Media } from './entities';


export const CustomCodeBlock = (props) => {
    return (
        <code style={{display: "block", padding: "20px"}}>
            {props.children}
        </code>
    );
}


export function CustomBlockRenderer(block) {

    if (block.getType() === 'atomic') {
        return {
            component: Media,
            editable: false,
        };
    }

    return null;
}


export function getBlockStyle(block) {
    switch (block.getType()) {
        case 'blockquote': return 'RichEditor-blockquote';
        case 'code-block': return 'RichEditor-code-block';
        default: return null;
    }
}


const blockRenderMap = Map({
    'code-block': {
        element: 'div',
        wrapper: <CustomCodeBlock />
    }
});

export const customBlockRenderMap = Draft
    .DefaultDraftBlockRenderMap.merge(blockRenderMap);
