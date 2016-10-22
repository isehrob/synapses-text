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
import withPersistance, * as pfunctions from '../../app/features/persistance';

describe("persistStyles function", () => {
    const fn = pfunctions.persistStyles;
    const rawBlock = {
        "key":"e8qfk",
        "text":" Note that a function signature may only include a single rest parameter, and it must be the final formal parameter to that function. Breaking either of those restrictions will cause a syntax error.","type":"unstyled","depth":0,
        "inlineStyleRanges":[{"offset":13,"length":9,"style":"ITALIC"},{"offset":32,"length":25,"style":"BOLD"}],
        "entityRanges":[]
    };

    it('it creates a list with a persisted inline styles', () => {
        const expected = [
            {start: 4, length: 1, style: "ITALIC"},
            {start: 6, length: 5, style: "BOLD"}
        ];
        expect(rawBlock.text.split(" ")[0]).toEqual("");
        expect(fn(rawBlock)).toEqual(expected);
    });
});

describe("persistEntities function", () => {

});

describe("reApplyPersistedStyles function", () => {
    const contentState = oneLinedCs();
    const fn = pfunctions.reApplyPersistedStyles;
    it("reapplies the persisted styles to the block", () => {
        const persisted = [
            {start: 4, length: 1, style: "ITALIC"},
            {start: 6, length: 5, style: "BOLD"}
        ];
        const block = contentState.getBlockForKey("e8qfk");
        const selection1 = SelectionState.createEmpty(
            block.getKey()).merge({anchorOffset: 13, focusOffset: 21});
        const selection2 = SelectionState.createEmpty(
            block.getKey()).merge({anchorOffset: 32, focusOffset: 57});
        let newContentState = Modifier.applyInlineStyle(
            contentState, selection1, "ITALIC"
        );
        newContentState = Modifier.applyInlineStyle(
            newContentState, selection2, "BOLD"
        );

        expect(
            fn(contentState, block, persisted)
        ).toEqual(newContentState);
    })
});

describe("reApplyPersistedEntities function", () => {

});

describe("replaceBlockText function", () => {

});

describe("proccessSelected function", () => {

});

describe("proccessContentBlock function", () => {
    const rawBlock = {
        "key":"e8qfk",
        "text":" Note that a function signature may only include a single rest parameter, and it must be the final formal parameter to that function. Breaking either of those restrictions will cause a syntax error.","type":"unstyled","depth":0,
        "inlineStyleRanges":[{"offset":13,"length":9,"style":"ITALIC"},{"offset":32,"length":25,"style":"BOLD"}],
        "entityRanges":[]
    };
    const contentState = oneLinedCs();
    const fn = pfunctions.proccessContentBlock;
    it("proccesses contentBlock with rich styling persistance", () => {
        // here we go
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

        expect(
            fn(contentState, rawBlock, (text) => text.toUpperCase())
        ).toEqual(newContentState);

    })
});

describe("main persistance function", () => {
    const contentState = multilinedCs();
    
    it("get entire content state, proccesses it with proccess function \
        persisting all rich styling information", () => {

    });
});


/* describe("editor's updateContentState feature function", () => {

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

*/
