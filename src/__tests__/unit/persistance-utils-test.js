
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

import {multilinedCs, oneLinedCs} from '../../mocks/contentState';

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

});

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
