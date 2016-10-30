
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

import {
    multilinedCs,
    oneLinedCs,
    oneLinedCs1
} from '../../mocks/contentState';

const featureFunctions = require('../../features/persistance-utils');
const oneLinetext = 'Нет подключения к Интернету';

// these are `draft` inline style ranges objects
const oneWordRanges = [
    {length:12, offset:4,style:"UNDERLINE"},
    {length:9, offset:18,style:"ITALIC"},
];
const twoWordRanges = [
    {length:16, offset:0,style:"UNDERLINE"},
    {length:11, offset:16,style:"ITALIC"},
];

describe("getRangeEnd function", () => {
    it("correctly calculates the end of the segment from the length \
        property of the range object", () => {
            expect(
                featureFunctions.getRangeEnd(oneWordRanges[0])
            ).toBe(15);
        });

    it("finds end offset correctly when there are more than one word \
        in styled segment", () => {
            const range = twoWordRanges[0];
            const resultOffset = 15;
            expect(
                featureFunctions.getRangeEnd(range)
            ).toBe(resultOffset);
        });
});

// testing one line text with multiple combinations of styling
// one word styling
describe('editors getWordBoundaryFromChrOffset feature function', () => {

    it('returns start offset of the one word styled segment', () => {
        const range = oneWordRanges[0];
        const resultOffset = 4;
        expect(
            featureFunctions.getWordBoundaryFromChrOffset(range.offset, oneLinetext, true)
        ).toBe(resultOffset);
    });

    it('returns end offset of the one word styled segment', () => {
        const range = oneWordRanges[0];
        const resultOffset = 15;
        const input = featureFunctions.getRangeEnd(range);
        expect(
            featureFunctions.getWordBoundaryFromChrOffset(input, oneLinetext)
        ).toBe(resultOffset);
    });

    it('returns start offset even if it in the middle of the word', () => {
        const range = oneWordRanges[1];
        const resultOffset = 18;
        expect(
            featureFunctions.getWordBoundaryFromChrOffset(range.offset, oneLinetext, true)
        ).toBe(resultOffset);
    });

    it('returns the end offset even if it the edge of the text', () => {
        const range = oneWordRanges[1];
        const resultOffset = 27;
        const input = featureFunctions.getRangeEnd(range);
        expect(
            featureFunctions.getWordBoundaryFromChrOffset(input, oneLinetext)
        ).toBe(resultOffset);
    });

    it('returns the start offset even if it is \
        the start edge with multiple words', () => {
        const range = twoWordRanges[0];
        const resultOffset = 0;
        expect(
            featureFunctions.getWordBoundaryFromChrOffset(range.offset, oneLinetext, true)
        ).toBe(resultOffset);
    });

    it('returns end offset of the multiple word styled segment', () => {
        const range = twoWordRanges[0];
        const resultOffset = 15;
        const input = featureFunctions.getRangeEnd(range);
        expect(
            featureFunctions.getWordBoundaryFromChrOffset(input, oneLinetext)
        ).toBe(resultOffset);
        expect(oneLinetext.charCodeAt(15)).toEqual(32);
    });

    it('returns start offset of the multiple word styled segment', () => {
        const range = twoWordRanges[1];
        const resultOffset = 16;
        expect(
            featureFunctions.getWordBoundaryFromChrOffset(range.offset, oneLinetext, true)
        ).toBe(resultOffset);
    });

    it('returns the end of multiple word styled segment', () => {
        const range = twoWordRanges[1];
        const resultOffset = 27;
        const input = featureFunctions.getRangeEnd(range);
        expect(
            featureFunctions.getWordBoundaryFromChrOffset(input, oneLinetext)
        ).toBe(resultOffset);
    });

    it("return start offset correctly when it lands on space", () => {
        expect(
            featureFunctions.getWordBoundaryFromChrOffset(3, oneLinetext, true)
        ).toBe(4);
    });

});

describe("extractPreText function", () => {
    it("extracts part of the text prior to styled segment", () => {
        const contentState = oneLinedCs1();
        const text = contentState.getBlocksAsArray()[0].getText();
        const startBoundary = 109;
        expect(
            featureFunctions.extractPreText(startBoundary, text).length
        ).toBe(109);
    });

    it("handles cases when startBoundary is 0", () => {
        const contentState = oneLinedCs1();
        const text = contentState.getBlocksAsArray()[0].getText();
        const startBoundary = 0;
        expect(
            featureFunctions.extractPreText(startBoundary, text)
        ).toBe(false);
    });
});

describe("extractStyledSegment function", () => {
    it("extracts styled segment from the block text", () => {
        const contentState = oneLinedCs1();
        const block = contentState.getBlocksAsArray()[0];
        const [ start, end ] = [109, 118];
        const result = featureFunctions.extractStyledSegment(
            block.getText(), start, end
        );
        expect(result).toEqual("parameter");
        expect(result.split(" ").length).toBe(1);
    });
});

// one word styling
describe("convertRangeFromChrToWdLevel function", () => {

    it('gets offset and length and gives one word index of the segment', () => {
        const expectedObj = {start: 1,length: 1,style: "UNDERLINE"};
        expect(
            featureFunctions.convertRangeFromChrToWdLevel(oneWordRanges[0], oneLinetext)
        ).toEqual(expectedObj);
    });

    it('gets offset and length and gives \
        one word index of the segment', () => {
        const expectedObj = {start: 3,length: 1,style: "ITALIC"};
        expect(
            featureFunctions.convertRangeFromChrToWdLevel(oneWordRanges[1], oneLinetext)
        ).toEqual(expectedObj);
    });

    it('gets offset and length and gives \
        multiple word index of the segment', () => {
        const expectedObj = {start: 0, length: 2, style: "UNDERLINE"};
        expect(
            featureFunctions.convertRangeFromChrToWdLevel(twoWordRanges[0], oneLinetext)
        ).toEqual(expectedObj);
    });

    it('gets offset and length and gives \
        multiple word index of the segment', () => {
        const expectedObj = {start: 2, length: 2, style: "ITALIC"};
        expect(
            featureFunctions.convertRangeFromChrToWdLevel(twoWordRanges[1], oneLinetext)
        ).toEqual(expectedObj);
    });

    it("correctly handles arrays indexOf method when theres a word comes \
        multiple times in a text but only one of them is styled", () => {
            const contentState = oneLinedCs1();
            // below are initial values of inline styles
            // in contentState's only block:
            // {"offset":108,"length":9,"style":"ITALIC"},
            // {"offset":127,"length":8,"style":"BOLD"}
            const wdLevelStyleRanges = [
                {start: 21, length: 1, style: "ITALIC"},
                {start: 24, length: 1, style: "BOLD"}
            ];
            const rawBlock = convertToRaw(contentState).blocks[0];
            const firstRange = rawBlock.inlineStyleRanges[0];
            const secondRange = rawBlock.inlineStyleRanges[1];
            expect(firstRange.offset).toBe(109);
            expect(secondRange.offset).toBe(127);
            expect(rawBlock.text.length).toBe(204);
            expect(rawBlock.text.split(" ")[21]).toEqual("parameter");
            expect(
                featureFunctions.convertRangeFromChrToWdLevel(
                    firstRange, rawBlock.text
                )
            ).toEqual(wdLevelStyleRanges[0]);
            expect(
                featureFunctions.convertRangeFromChrToWdLevel(
                    secondRange, rawBlock.text
                )
            ).toEqual(wdLevelStyleRanges[1]);
        });

});

// NOTE: here our this BUG (gy) function comes!
describe("editor's convertRangeFromWdToChrLevel feature function", () => {

    const contentState = multilinedCs();

    it('returns start and end offset of the one word \
        part of the new text', () => {
        const block = contentState.getBlockForKey("3hido");
        const inlinStyle = {"start": 1,"length": 1,"style":"CODE"};
        const startOffset = 4;
        const endOffset = 7;
        const result = featureFunctions.convertRangeFromWdToChrLevel(block, inlinStyle);
        expect(
            block.getText().substring(startOffset, endOffset)
        ).toEqual("...");
        expect(result.startOffset).toEqual(startOffset);
        expect(result.endOffset).toEqual(endOffset);
    });

    it('recreates inline style ranges', () => {
        const rawBlock = {
            getText: () => " Note that a function signature may only include a single rest parameter, and it must be the final formal parameter to that function. Breaking either of those restrictions will cause a syntax error."
        };

        const persistedStyles1 = {start: 6, length: 5, style: "BOLD"};
        const expected1 = {"startOffset":32,"endOffset":57};
        const persistedStyles2 = {start: 4, length: 1, style: "ITALIC"};
        // NOTE! endOffset is not 22 because 22th character is a space and
        // this function trims spaces
        const expected2 = {"startOffset":13,"endOffset":21};

        const result1 = featureFunctions.convertRangeFromWdToChrLevel(rawBlock, persistedStyles1);
        const result2 = featureFunctions.convertRangeFromWdToChrLevel(rawBlock, persistedStyles2);
        expect(result1).toEqual(expected1);
        expect(result2).toEqual(expected2);


    })

    it('returns start and end offset of the multiple word \
        part of the new text', () => {
        const block = contentState.getBlockForKey("3hido");
        // The ... <construct we saw> above for rest parameters = 17, 8+17=25
        const inlinStyle = {"start": 2,"length": 3,"style":"CODE"};
        const startOffset = 8;
        const endOffset = 24;
        const result = featureFunctions.convertRangeFromWdToChrLevel(block, inlinStyle);
        expect(result.startOffset).toEqual(startOffset);
        expect(
            block.getText().substring(startOffset, endOffset)
        ).toEqual('construct we saw');
        expect(result.endOffset).toEqual(endOffset);
    });

    it("returns actual offsets of styled ranges", () => {
        const contentState = oneLinedCs1();
        // below are initial values of inline styles
        // in contentState's only block:
        const expectedResult = [
            {"startOffset":109,"endOffset":118},
            {"startOffset":127,"endOffset":135}
        ];
        const wdLevelStyleRanges = [
            {start: 21, length: 1, style: "ITALIC"},
            {start: 24, length: 1, style: "BOLD"}
        ];
        const block = contentState.getBlocksAsArray()[0];
        expect(block.getText().length).toBe(204);
        expect(
            featureFunctions.convertRangeFromWdToChrLevel(
                block, wdLevelStyleRanges[0]
            )
        ).toEqual(expectedResult[0]);
        expect(
            featureFunctions.convertRangeFromWdToChrLevel(
                block, wdLevelStyleRanges[1]
            )
        ).toEqual(expectedResult[1]);
        expect(block.getText().substring(109, 118)).toEqual("parameter");
        expect(block.getText().substring(127, 135)).toEqual("function");

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
