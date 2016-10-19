
// testing getPosition function

import {
    convertFromRaw,
    convertToRaw,
    EditorState,
    ContentState,
    Entity,
    Modifier,
    SelectionState
} from 'draft-js';

const featureFunctions = require('../../app/features/persistance-utils');
const oneLinetext = 'Нет подключения к Интернету';

// these are `draft` inline style ranges objects
// offsets start from 1 not 0
const oneWordRanges = [
    {length:12, offset:4,style:"UNDERLINE"},
    {length:9, offset:18,style:"ITALIC"},
];
const twoWordRanges = [
    {length:16, offset:1,style:"UNDERLINE"},
    {length:11, offset:17,style:"ITALIC"},
];

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

function multilinedCs() {
    const editorState = EditorState.createWithContent(
        convertFromRaw(editorRawContentMultiLine)
    );
    return editorState.getCurrentContent();
}

function oneLinedCs() {
    const editorState = EditorState.createWithContent(
        convertFromRaw(editorRawContentOneLine)
    );
    return editorState.getCurrentContent();
}


// testing one line text with multiple combinations of styling
// one word styling
describe('editors getPosition feature function', () => {

    it('returns start offset of the one word styled segment', () => {
        const range = oneWordRanges[0];
        const resultOffset = 4;
        expect(
            featureFunctions.getPosition(range.offset, oneLinetext, true)
        ).toBe(resultOffset);
    });

    it('returns end offset of the one word styled segment', () => {
        const range = oneWordRanges[0];
        const resultOffset = 15;
        const input = featureFunctions.getRangeEnd(range);
        expect(
            featureFunctions.getPosition(input, oneLinetext)
        ).toBe(resultOffset);
    });

    it('returns start offset even if it in the middle of the word', () => {
        const range = oneWordRanges[1];
        const resultOffset = 18;
        expect(
            featureFunctions.getPosition(range.offset, oneLinetext, true)
        ).toBe(resultOffset);
    });

    it('returns the end offset even if it the edge of the text', () => {
        const range = oneWordRanges[1];
        const resultOffset = 27;
        const input = featureFunctions.getRangeEnd(range);
        expect(
            featureFunctions.getPosition(input, oneLinetext)
        ).toBe(resultOffset);
    });

    it('returns the start offset even if it is \
        the start edge with multiple words', () => {
        const range = twoWordRanges[0];
        const resultOffset = 0;
        expect(
            featureFunctions.getPosition(range.offset, oneLinetext, true)
        ).toBe(resultOffset);
    });

    it('returns end offset of the multiple word styled segment', () => {
        const range = twoWordRanges[0];
        const resultOffset = 15;
        const input = featureFunctions.getRangeEnd(range);
        expect(
            featureFunctions.getPosition(input, oneLinetext)
        ).toBe(resultOffset);
        expect(oneLinetext.charCodeAt(15)).toEqual(32);
    });

    it('returns start offset of the multiple word styled segment', () => {
        const range = twoWordRanges[1];
        const resultOffset = 16;
        expect(
            featureFunctions.getPosition(range.offset, oneLinetext, true)
        ).toBe(resultOffset);
    });

    it('returns the end of multiple word styled segment', () => {
        const range = twoWordRanges[1];
        const resultOffset = 27;
        const input = featureFunctions.getRangeEnd(range);
        expect(
            featureFunctions.getPosition(input, oneLinetext)
        ).toBe(resultOffset);
    });

});

// one word styling
describe("editor's getStyledSegment feature function", () => {

    it('gets offset and length and gives one word index of the segment', () => {
        const expectedObj = {start: 1,length: 1,style: "UNDERLINE"};
        expect(
            featureFunctions.getStyledSegment(oneWordRanges[0], oneLinetext)
        ).toEqual(expectedObj);
    });

    it('gets offset and length and gives \
        one word index of the segment', () => {
        const expectedObj = {start: 3,length: 1,style: "ITALIC"};
        expect(
            featureFunctions.getStyledSegment(oneWordRanges[1], oneLinetext)
        ).toEqual(expectedObj);
    });

    it('gets offset and length and gives \
        multiple word index of the segment', () => {
        const expectedObj = {start: 0, length: 2, style: "UNDERLINE"};
        expect(
            featureFunctions.getStyledSegment(twoWordRanges[0], oneLinetext)
        ).toEqual(expectedObj);
    });

    it('gets offset and length and gives \
        multiple word index of the segment', () => {
        const expectedObj = {start: 2, length: 2, style: "ITALIC"};
        expect(
            featureFunctions.getStyledSegment(twoWordRanges[1], oneLinetext)
        ).toEqual(expectedObj);
    });

});

describe("editor's createBlockSelection feature functions", () => {
    // mock contentState object
    const contentState = oneLinedCs();

    it('creates block selection for entire block', () => {
        const block = contentState.blockMap.toArray()[0]
        const blockSelection = featureFunctions.createBlockSelection(
            block, 'undefined', block.getLength()
        );
        expect(blockSelection.focusOffset).toEqual(block.getLength());
    });

    it('creates block selection for parts of block', () => {
        const block = contentState.blockMap.toArray()[0]
        const startOffset = 24;
        const endOffset = 45;
        const blockSelection = featureFunctions.createBlockSelection(
            block, startOffset, endOffset
        );
        expect(blockSelection.anchorOffset).toEqual(startOffset);
        expect(blockSelection.focusOffset).toEqual(endOffset);
    });

    it('creates block selection from the part till the end', () => {
        const block = contentState.blockMap.toArray()[0]
        const startOffset = 24;
        const blockSelection = featureFunctions.createBlockSelection(
            block, startOffset
        );
        expect(blockSelection.anchorOffset).toEqual(startOffset);
        expect(blockSelection.focusOffset).toEqual(block.getLength());
    });

});

describe("editor's getRawBlocksArray feature function", () => {

    const contentState = multilinedCs();

    it('returns raw contentStates blocks part', () => {
        const result = featureFunctions.getRawBlocksArray(contentState);
        const expected = convertToRaw(contentState).blocks;
        expect(result).toEqual(expected);
    });
});

describe("editor's hasInlineStyles feature function", () => {

    const contentState = multilinedCs();

    it("checks whether block has inline styles", () => {
        const rawBlock = convertToRaw(contentState).blocks[2];
        expect(rawBlock.key).toEqual('3hido');
        expect(rawBlock.getText).toBeUndefined();
        expect(
            featureFunctions.blockHasInlineStyles(rawBlock)
        ).toBeTruthy();
    });
});

describe("editor's getNotRawBlock function", () => {

    const contentState = multilinedCs();
    it("returns draft's immutable block object from the key", () => {
        const rawBlock = convertToRaw(contentState).blocks[2];
        const block = featureFunctions.getNotRawBlock(
            contentState, rawBlock.key);
        expect(block.getText).toBeDefined();
    });

})

describe("editor's blockIsProccessable feature function", () => {

    it('checks wether block is proccessable', () => {
        const cs = multilinedCs();
        const atomicBlock = cs.getBlockForKey("9q23s");
        const emptyBlock = cs.getBlockForKey("9q21s");
        const textBlock = cs.blockMap.toArray()[1];
        expect(
            featureFunctions.blockIsProccessible(atomicBlock)
        ).toEqual(false);
        expect(
            featureFunctions.blockIsProccessible(emptyBlock)
        ).toEqual(false);
    });

});

describe("editor's getStyleRanges feature function", () => {

    const contentState = multilinedCs();

    it('returns start and end offset of the one word \
        part of the new text', () => {
        const block = contentState.getBlockForKey("3hido");
        const inlinStyle = {"start": 1,"length": 1,"style":"CODE"};
        const startOffset = 4;
        const endOffset = 7;
        const result = featureFunctions.getStyleRanges(block, inlinStyle);
        expect(
            block.getText().substring(startOffset, endOffset)
        ).toEqual("...");
        expect(result.startOffset).toEqual(startOffset);
        expect(result.endOffset).toEqual(endOffset);
    });

    it('returns start and end offset of the multiple word \
        part of the new text', () => {
        const block = contentState.getBlockForKey("3hido");
        // The ... <construct we saw> above for rest parameters = 17, 8+17=25
        const inlinStyle = {"start": 2,"length": 3,"style":"CODE"};
        const startOffset = 8;
        const endOffset = 24;
        const result = featureFunctions.getStyleRanges(block, inlinStyle);
        expect(result.startOffset).toEqual(startOffset);
        expect(
            block.getText().substring(startOffset, endOffset)
        ).toEqual('construct we saw');
        expect(result.endOffset).toEqual(endOffset);
    });
});

describe("editor's updateContentState feature function", () => {

    const contentState = multilinedCs();

    it('updates blocks text even without inline styles \
        returns new contentState', () => {
        const block = contentState.getBlockForKey("3hido");
        const newText = block.getText().toUpperCase();
        const selection = featureFunctions.createBlockSelection(block)
        const newContentState = Modifier.replaceText(
            contentState, selection, newText
        );
        const result = featureFunctions.updateContentState(
            contentState, block, newText
        );
        expect(result).toEqual(newContentState);

    });

    it('updates blocks text and reapplies its inlineStyles \
        returns new contentState object', () => {
        const block = contentState.getBlockForKey("3hido");
        const newText = block.getText().toUpperCase();
        const selection = featureFunctions.createBlockSelection(block);
        let newContentState = Modifier.replaceText(
            contentState, selection, newText
        );
        const styleSelection = featureFunctions.createBlockSelection(
            block, 8, 24
        )
        newContentState = Modifier.applyInlineStyle(
            newContentState, styleSelection, 'CODE'
        )
        const otherStyleSelection = featureFunctions.createBlockSelection(
            block, 4, 7
        )
        newContentState = Modifier.applyInlineStyle(
            newContentState, otherStyleSelection, 'CODE'
        )
        const result = featureFunctions.updateContentState(
            contentState, block, newText,
            [
                {"start": 2, "length": 3, "style": 'CODE'},
                {"start": 1, "length": 1, "style": 'CODE'}
            ]
        );
        expect(result).toEqual(newContentState);
    });
});

describe("editor's processBlocksText feature function", () => {

    const contentState = multilinedCs();

    it("proccesses selected segment of the text within the block", () => {
        const block = contentState.getBlockForKey("3hido");
        const anchor = 8;
        const focus = 24;
        let selection = SelectionState.createEmpty(block.getKey())
        selection = selection.merge({anchorOffset: anchor, focusOffset: focus});
        const expectedCs = Modifier.replaceText(
            contentState, selection,
            block.getText().slice(anchor, focus).toUpperCase()
        );
        const result = featureFunctions.processBlocksText(
            contentState, featureFunctions.transliterateText, selection
        );
        expect(result).toEqual(expectedCs);
    });

    it("proccesses all blocks text data and reapply style info", () => {
        const styles = [
            {"key":"3hido", range: {"offset":4,"length":3,"style":"CODE"}},
            {"key":"2d85q", range: {"offset":87,"length":5,"style":"CODE"}}
        ];

        let expectedCs = contentState;
        const blocks = contentState.blockMap.toArray();
        // first modify text
        blocks.forEach((block) => {
            if(block.getText().trim() === "") return;
            const selection = featureFunctions.createBlockSelection(block);
            expectedCs = Modifier.replaceText(
                expectedCs, selection, block.getText().toUpperCase()
            );
        });
        // now apply styles
        styles.forEach((style) => {
            const selection = featureFunctions.createBlockSelection(
                expectedCs.getBlockForKey(style.key),
                style.range.offset, (style.range.length + style.range.offset)
            );
            expectedCs = Modifier.applyInlineStyle(
                expectedCs, selection, style.range.style
            );
        });

        const result = featureFunctions.processBlocksText(
            contentState, featureFunctions.transliterateText
        );
        expect(result).toEqual(expectedCs);
    });
});
