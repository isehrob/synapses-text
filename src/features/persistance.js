
import {
    convertToRaw,
    Modifier,
    EditorState
} from 'draft-js';
import * as Putils from './persistance-utils';


// accepts contentState and returns the special
// inlineStyles array for further reapplying
export function persistStyles(rawBlock) {
    return rawBlock.inlineStyleRanges.map(
        range => Putils.convertRangeFromChrToWdLevel(range, rawBlock.text)
    );
}

// accepts contentState and returns the special
// entities array for further reapplying
export function persistEntities(rawBlock){
    // TODO (sehrob): to be implemented
}

// gets contentState and special persistedStyles object and
// applies it to the contentState and returns updated contentState
export function reApplyPersistedStyles(contentState, block, persistedStyles) {
    return persistedStyles.reduce((reducedCs, style, i) => {
        // creating block selection for the styled text segment
        const styleRanges = Putils.convertRangeFromWdToChrLevel(block, style);
        const selection = Putils.createBlockSelection(
            block, styleRanges.startOffset, styleRanges.endOffset
        );
        // console.log('iteration: ', i, reducedCs);
        // console.log(reducedCs.getPlainText());
        // const cmdlist = reducedCs.getBlocksAsArray()[0].getCharacterList();
        // console.log(cmdlist.toJSON());
        // console.log(selection);
        return Modifier.applyInlineStyle(
            reducedCs, selection, style.style);
    }, contentState);
}

// gets contentState and special persistedEntities object and
// applies it to the contentState and returns updated contentState
export function reApplyPersistedEntities(contentState, persistedEntities) {
    // TODO (sehrob): to be implemented
}

// updates block text with the proccessed one
export function replaceBlockText(
    contentState, proccessFunction, block
) {
    let selection = Putils.createBlockSelection(block);
    // getting the block text and modifying it
    return Modifier.replaceText(
        contentState, selection,
        proccessFunction(block.getText())
    );
}


// a clouser function for proccessFunction injection
export function generateContentBlockProccessor(proccessFunction){

    // gets contentState and contentBlock immutable record
    // and modifies contentBlocks text, updates contentState
    // and returns it
    return (contentState, rawBlock) => {
        // we can't use raw blocks as blocks in this context
        // because they are different data types
        const block = contentState.getBlockForKey(rawBlock.key);
        const isProccessable = Putils.blockIsProccessible(block);
        const hasInlineStyles = (rawBlock.inlineStyleRanges.length > 0);
        let persistedStyles;
        // if it is not proccessable then no need to proceed
        if (!isProccessable) return contentState;

        if (hasInlineStyles) {
            persistedStyles = persistStyles(rawBlock);
        }

        contentState = replaceBlockText(
            contentState, proccessFunction, block
        );

        if (hasInlineStyles) {
            contentState = reApplyPersistedStyles(
                contentState, block, persistedStyles
            )
        }

        return contentState;
    }
}

// gets contentState and selection object and returns the
// updated contentState with selection part proccessed
export function proccessSelected(contentState, processFunction, selection) {
    const block = contentState.getBlockForKey(selection.getAnchorKey());
    const resultText = processFunction(
        Putils.getBlockText(selection, block)
    );
    // using `Modifier` gonna replace selected text with
    // the modified one
    return Modifier.replaceText(
        contentState, selection, resultText
    );
}

export function proccessWholeContent(contentState, proccessFunction) {
    // rawContentState blocks have inlineStyleRanges list which is usefull
    // to find out the styled segments of text for persistance. And this
    // is the only reason I'm using them because don't want to calculate it
    // myself from characterMetaData
    const rawBlocks = convertToRaw(contentState).blocks;
    const proccessContentBlock = generateContentBlockProccessor(
        proccessFunction
    );

    return rawBlocks.reduce((reducedContentState, rawBlock) => {
        // result of the function will be reduced to reducedContentState
        return proccessContentBlock(reducedContentState, rawBlock);
    }, contentState);
}

function newEditorState(editorState, contentState) {
    const newState = EditorState.push(editorState, contentState);
    return EditorState.moveSelectionToEnd(newState);
}

// main function which proccess block text with rich formatting persistance
export default (editorState, proccessFunction) => {
    const selection = editorState.getSelection();
    const contentState = editorState.getCurrentContent();
    let newContentState;
    // if selection is being transliterated
    if(!selection.isCollapsed()) {
        // we need to extract selected text first
        newContentState = proccessSelected(
            contentState,
            proccessFunction,
            selection
        );

    } else {
        newContentState = proccessWholeContent(
            contentState,
            proccessFunction
        )
    }


    // const newContentState = ContentState.createFromBlockArray(newBlocks);

	return newEditorState(editorState, newContentState);
}
