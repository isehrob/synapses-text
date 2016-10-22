
// testing getPosition function

import {
    convertFromRaw,
    convertToRaw,
    EditorState,
} from 'draft-js';

const editorRawContentMultiLine = {
    "entityMap":{},
    "blocks":[
        {"key":"e8qfk","text":" Note that a function signature may only include a single rest parameter, and it must be the final formal parameter to that function. Breaking either of those restrictions will cause a syntax error.","type":"unstyled","depth":0,
            "inlineStyleRanges":[],"entityRanges":[]},
        {"key":"ejgco","text":"Spread","type":"header-two","depth":0,"inlineStyleRanges":[],"entityRanges":[]},
        {"key":"3hido","text":"The ... construct we saw above for rest parameters is reused in ES6 to provide “spread” for both function calls and array literals. ","type":"unstyled","depth":0,
            "inlineStyleRanges":[{"offset":4,"length":3,"style":"CODE"}],"entityRanges":[]},
        {"key":"2d85q","text":"In the case of function calls this allows us to avoid the common practice of using the apply method to spread the values of an array across the parameters of the function: ","type":"unstyled","depth":0,
            "inlineStyleRanges":[{"offset":87,"length":5,"style":"CODE"}],"entityRanges":[]},
        {"key":"9q21s","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[]},
        {"key":"9q23s","text":"","type":"atomic","depth":0,"inlineStyleRanges":[],"entityRanges":[]}
    ]
};

const editorRawContentOneLine = {
    "entityMap":{},
    "blocks":[
        {"key":"e8qfk","text":" Note that a function signature may only include a single rest parameter, and it must be the final formal parameter to that function. Breaking either of those restrictions will cause a syntax error.","type":"unstyled","depth":0,
            "inlineStyleRanges":[{"offset":13,"length":9,"style":"ITALIC"},{"offset":32,"length":25,"style":"BOLD"}],"entityRanges":[]},
        {"key":"9q21s","text":"","type":"unstyled","depth":0,"inlineStyleRanges":[],"entityRanges":[]}]
};

export function multilinedCs() {
    const editorState = EditorState.createWithContent(
        convertFromRaw(editorRawContentMultiLine)
    );
    return editorState.getCurrentContent();
}

export function oneLinedCs() {
    const editorState = EditorState.createWithContent(
        convertFromRaw(editorRawContentOneLine)
    );
    return editorState.getCurrentContent();
}
