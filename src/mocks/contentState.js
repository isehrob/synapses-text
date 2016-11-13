// testing getPosition function
// These things actually have to be done some other way
// but this is what I've got so far!
import {
    convertFromRaw,
    convertToRaw,
    EditorState,
    Modifier,
    SelectionState
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
        {"key":"e8qfk","text":" Note that a function signature may only "+ //41
        "include a single rest parameter of, and it must be the final formal "+ //68
        "parameter to that function on. Breaking either of those restrictions "+ //69
        "will cause a syntax error.", //26 = 204
            "type":"unstyled","depth":0,
            "inlineStyleRanges":[
                {"offset":13,"length":9,"style":"ITALIC"},
                {"offset":32,"length":25,"style":"BOLD"}
            ],
            "entityRanges":[]
        }
    ]
};

// here we try to catch our bug which is caused by Array's indexOf method
// indexOf returns always the index of the first match result
// here the text contains 2 of "parameter" and "function" words
// but second of the both will be styled but our buggy function
// "convertRangeFromWdToChrLevel" will return the index of the first ones
const editorRawContentOneLine1 = {
    "entityMap":{},
    "blocks":[
        {
            "key":"e8qfk",
            // NOTE: here "\" symbol and tabs are also included in the text lenght :)
            "text":" Note that a function signature may only "+ //41
            "include a single rest parameter of, and it must be the final formal "+ //68
            "parameter to that function on. Breaking either of those restrictions "+ //69
            "will cause a syntax error.", //26 = 204
            "type":"unstyled","depth":0,
            "inlineStyleRanges":[
                {"offset":109,"length":9,"style":"ITALIC"},
                {"offset":127,"length":8,"style":"BOLD"}
            ],
            "entityRanges":[]
        }
    ]
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

export function oneLinedCs1(){
    const editorState = EditorState.createWithContent(
        convertFromRaw(editorRawContentOneLine1)
    );
    return editorState.getCurrentContent();
}

// the procedural function: think don't need testing :)
export function proccessedOneLinedContentState() {
    const contentState = oneLinedCs();
    const block = contentState.getBlockForKey("e8qfk");
    const selection = SelectionState.createEmpty(block.getKey()).merge({
        focusOffset: block.getText().length
    });
    let newContentState = Modifier.replaceText(
        contentState, selection, block.getText().toUpperCase()
    );
    const selection1 = SelectionState.createEmpty(
        block.getKey()).merge({anchorOffset: 13, focusOffset: 21});
    const selection2 = SelectionState.createEmpty(
        block.getKey()).merge({anchorOffset: 32, focusOffset: 57});

    newContentState = Modifier.applyInlineStyle(
        newContentState, selection1, "ITALIC"
    );
    newContentState = Modifier.applyInlineStyle(
        newContentState, selection2, "BOLD"
    );
    return newContentState;
}

export function proccessedOneLinedContentState1() {
    const contentState = oneLinedCs1();
    const block = contentState.getBlockForKey("e8qfk");
    const selection = SelectionState.createEmpty(block.getKey()).merge({
        focusOffset: block.getText().length
    });
    let newContentState = Modifier.replaceText(
        contentState, selection, block.getText().toUpperCase()
    );
    const selection1 = SelectionState.createEmpty(
        block.getKey()).merge({anchorOffset: 109, focusOffset: 118});
    const selection2 = SelectionState.createEmpty(
        block.getKey()).merge({anchorOffset: 127, focusOffset: 135});

    newContentState = Modifier.applyInlineStyle(
        newContentState, selection1, "ITALIC"
    );
    newContentState = Modifier.applyInlineStyle(
        newContentState, selection2, "BOLD"
    );
    return newContentState;
}

export function proccessedMultilinedContentState() {
    const contentState = multilinedCs();
    let newContentState = contentState;

    // 1 block no inline styles
    const block = contentState.getBlockForKey("e8qfk");
    const selection = SelectionState.createEmpty(block.getKey()).merge({
        focusOffset: block.getText().length
    });
    newContentState = Modifier.replaceText(
        newContentState, selection, block.getText().toUpperCase()
    );

    // 2 block no inline styles
    const block2 = contentState.getBlockForKey("ejgco");
    const selection2 = SelectionState.createEmpty(block2.getKey()).merge({
        focusOffset: block2.getText().length
    });
    newContentState = Modifier.replaceText(
        newContentState, selection2, block2.getText().toUpperCase()
    );
    // 3 block inline styles

    const block3 = contentState.getBlockForKey("3hido");
    const selection3 = SelectionState.createEmpty(block3.getKey()).merge({
        focusOffset: block3.getText().length
    });
    newContentState = Modifier.replaceText(
        newContentState, selection3, block3.getText().toUpperCase()
    );
    const selection31 = SelectionState.createEmpty(
        block3.getKey()).merge({anchorOffset: 4, focusOffset: 7});

    newContentState = Modifier.applyInlineStyle(
        newContentState, selection31, "CODE"
    );

    // 4 block inline styles

    const block4 = contentState.getBlockForKey("2d85q");
    const selection4 = SelectionState.createEmpty(block4.getKey()).merge({
        focusOffset: block4.getText().length
    });
    newContentState = Modifier.replaceText(
        newContentState, selection4, block4.getText().toUpperCase()
    );
    const selection41 = SelectionState.createEmpty(
        block4.getKey()).merge({anchorOffset: 87, focusOffset: 92});

    newContentState = Modifier.applyInlineStyle(
        newContentState, selection41, "CODE"
    );

    // others have no text
    return newContentState;
}
