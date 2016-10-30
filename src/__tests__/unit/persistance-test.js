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
    oneLinedCs1,
    proccessedOneLinedContentState,
    proccessedOneLinedContentState1,
    proccessedMultilinedContentState
} from '../../mocks/contentState';
import withPersistance, * as pfunctions from '../../features/persistance';


describe("persistStyles function", () => {

    it('it creates a list with a persisted inline styles', () => {
        const fn = pfunctions.persistStyles;
        // const rawBlock = {
        //      ...
        //     "inlineStyleRanges":[
        //            {"offset":13,"length":9,"style":"ITALIC"},
        //            {"offset":32,"length":25,"style":"BOLD"}
        //        ],
        //     ....
        // };
        const rawBlock = convertToRaw(oneLinedCs()).blocks[0];
        const expected = [
            {start: 4, length: 1, style: "ITALIC"},
            {start: 6, length: 5, style: "BOLD"}
        ];
        expect(rawBlock.text.split(" ")[0]).toEqual("");
        expect(fn(rawBlock)).toEqual(expected);
    });

    it("it correctly handles arrays indexOf method when theres a word comes \
        multiple times and only one of them is styled", () => {
            const contentState = oneLinedCs1();
            // below are initial values of inline styles
            // in contentState's only block:
            // const expectedResult = [
            //     {"startOffset":109,"endOffset":118},
            //     {"startOffset":127,"endOffset":135}
            // ];
            const wdLevelStyleRanges = [
                {start: 21, length: 1, style: "ITALIC"},
                {start: 24, length: 1, style: "BOLD"}
            ];
            const rawBlock = convertToRaw(contentState).blocks[0];
            expect(rawBlock.text.length).toBe(204);
            expect(
                pfunctions.persistStyles(
                    rawBlock
                )
            ).toEqual(wdLevelStyleRanges);
        });
});

describe("persistEntities function", () => {

});

describe("reApplyPersistedStyles function", () => {

    it("reapplies the persisted styles to the block", () => {
        const contentState = oneLinedCs();
        const fn = pfunctions.reApplyPersistedStyles;

        const persisted = [
            {start: 4, length: 1, style: "ITALIC"},
            {start: 6, length: 5, style: "BOLD"}
        ];
        const block = contentState.getBlockForKey("e8qfk");
        // block.set("text", block.getText().toUpperCase());
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

describe("generateContentBlockProccessor function", () => {

    it("generates partially applied function with injecting in \
        him contentState", () => {
            const contentState = oneLinedCs()
            const generatedFn = pfunctions
                .generateContentBlockProccessor((text) => text)
            expect(typeof generatedFn).toBe("function");
            const rawBlock = convertToRaw(contentState).blocks[0];
            const result = generatedFn(contentState, rawBlock);
            // checking if it is a contentState object returned
            expect(result.getBlockForKey).toBeDefined();
        });
});

describe("generateContentBlockProccessor generated partially applied function",
    () => {

    it("proccesses contentBlock with rich styling persistance \
        and contentState is injected in him", () => {
        // here we go
        const contentState = oneLinedCs();
        const proccessContentBlock = pfunctions
            .generateContentBlockProccessor((text) => text.toUpperCase());
        const rawBlock = convertToRaw(contentState).blocks[0];
        const newContentState = proccessedOneLinedContentState();
        expect(
            proccessContentBlock(contentState, rawBlock)
        ).toEqual(newContentState);

    })
});

describe("proccessWholeContent function", () => {

    it("proccesses all contentBlocks persisting rich styling and reduces \
        result to the contentState", () => {
            const contentState = oneLinedCs();
            const proccessedContentState = proccessedOneLinedContentState();
            const result = pfunctions.proccessWholeContent(
                contentState, (text) => text.toUpperCase()
            );
            // expect result to be contentState
            expect(result.getBlockForKey).toBeDefined();
            expect(result).toEqual(proccessedContentState);
        });

    it("proccesses all contentBlocks persisting rich styling and reduces \
        result to the contentState", () => {
            const contentState = oneLinedCs1();
            const proccessedContentState = proccessedOneLinedContentState1();
            const result = pfunctions.proccessWholeContent(
                contentState, (text) => text.toUpperCase()
            );
            // expect result to be contentState
            expect(result.getBlockForKey).toBeDefined();
            // expect(result).toEqual(proccessedContentState);
        });
})

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
