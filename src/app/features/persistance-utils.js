import { Map } from 'immutable';
import {
    convertToRaw,
    EditorState,
    ContentState,
    Entity,
    Modifier,
    SelectionState
} from 'draft-js';


// NOTE! in draft ranges start from 1 not 0!
// TODO (sehrob): find out when to return which one

// given contentBlock's text content and sytle offset it tries
// to figure out boundaries of the word(s) that's being styled
export function getWordBoundary(offset, blockText, start = false) {

    // NOTE! in draft ranges start from 1 not 0!
    // that's why I am doing this: offset - 1
    offset -= 1;
    // if we at the start of the text just return offset
    if (offset === 0) return offset;

    //  if it is a start position and
    //  if character at offset is a space
    //  then return offset + 1 otherwise
    //  find the start and return
    var character = blockText.charAt(offset);
    if(start) {
        if(character && character == " "){
            return ++offset;
        } else {
            // while the text is not exhausted to the beginning
            while(offset > -1) {
                character = blockText.charAt(offset);
                if (character && character == " ") {
                    return ++offset;
                }
                // advance leftwards
                --offset;
            }
        }
        // if nothing happens then this is the start of the string
        return 0;
    } else {
        //  otherwise if character at offset is a space
        //  then return offset - 1 else find and
        //  return end position
        if(character && character == " "){
            return offset;
        } else {
        // while the text is not exhausted to the end
            while(offset < blockText.length) {
                character = blockText.charAt(offset);
                if (character && character == " ") {
                    // not incrementing or decrementing
                    // offset because of the js's `substring` method
                    return offset;
                }
                // advance rightwards
                ++offset;
            }
        }
    }

    // just return offset untouched
    return offset;

    }

// getting part of the text
// getStyledSegment
export function getStyledSegment(range, blockText) {

    const rangeEnd = getRangeEnd(range);
    var segment = blockText.substring(
        getPosition(range.offset, blockText, true),
        getPosition(rangeEnd, blockText)
    );

    // don't know how but segment my have spaces
    // at the start and the end, so clearing it
    segment = segment.trim();

    // turn it into array so we could find out
    // from which to which word gets styled or
    // decorated
    segment = segment.split(" ");

    return {
        start: blockText.split(" ").indexOf(segment[0]),
        length: segment.length,
        style: range.style
    };

}

export function getBlockText (selection = false, block) {
    if(selection) {
        return block.getText().slice(
            selection.getStartOffset(),
            selection.getEndOffset())
    }
    return block.getText();
}

export function transliterateText(text) {
    return text.toUpperCase();
}

export function createBlockSelection(
    block,
    startOffset = false,
    endOffset = false
) {
    let blockSelection = SelectionState.createEmpty(block.getKey());
    let selectionObject = {};
    if (startOffset) selectionObject.anchorOffset = startOffset;
    selectionObject.focusOffset = (endOffset) ? endOffset : block.getLength();
    return blockSelection.merge(selectionObject);
}

export function getRawBlocksArray(contentState) {
    return convertToRaw(contentState).blocks;
}

export function getNotRawBlock(contentState, key) {
    return contentState.getBlockForKey(key);
}

export function blockIsProccessible(block) {
    return !(block.getType() === 'atomic' || block.getText().trim() === "");
}

export function blockHasInlineStyles(block) {
    return (block.inlineStyleRanges.length > 0);
}

export function getRangeEnd(range) {
    return (range.offset !== 1) ? range.length + range.offset :  range.length;
}

export function getStyleRanges(block, style) {

    const arrayOfWords = block.getText().split(" ");
    let startWord = arrayOfWords[style.start];
    // here we will compute the range to be styled
    if(style.length > 1) {
        // substracting 1 from length because length of the
        // first word already included int the segment
        for(let p = style.length - 1; p > 0; --p) {
            startWord += " " + arrayOfWords[p + style.start]
        }
    }

    let startOffset = arrayOfWords.splice(0, style.start)
        .join(" ").length + 1;

    let endOffset = startOffset + startWord.length;

    return {startOffset, endOffset};
}

export function updateContentState(
    contentState, block, text, inlineStyles = false
) {
    let newContentState = contentState;
    let blockSelection = createBlockSelection(block);
    // getting the block text and modifying it
    newContentState = Modifier.replaceText(
        newContentState, blockSelection, text);

    if(inlineStyles !== false) {
        inlineStyles.forEach((style) => {

            // creating block selection for the styled text segment
            const styleRanges = getStyleRanges(block, style);

            let blockInlineStyleSelection = createBlockSelection(
                block, styleRanges.startOffset, styleRanges.endOffset
            );

            // apply the style
            newContentState = Modifier.applyInlineStyle(
                newContentState, blockInlineStyleSelection, style.style);
        });
    }
    return newContentState;
}

/* Get style info at word level */
export function processBlocksText (
    contentState, processFunction, selection = false
) {
    // if it is selection then we process it easily
    // TODO (sehrob): persist styles here too
    if(selection) {
        const block = contentState.getBlockForKey(selection.getAnchorKey());
        const resultText = processFunction(getBlockText(selection, block));
        // using `Modifier` gonna replace selected text with
        // the modified one
        return Modifier.replaceText(
            contentState, selection, resultText
        );
    }

    // else it is a lot more complicated!
    // using raw blocks because for some reason only they have
    // usefull inlineStyleRanges attribute
    const rawBlocks = getRawBlocksArray(contentState);
    let newContentState = contentState;
    let blockInlineStylesArray = false;

    rawBlocks.map((rawBlock) => {
        // we can't use raw blocks as blocks in this context
        // because they are different data types
        const block = getNotRawBlock(newContentState, rawBlock.key);
        const isProccessable = blockIsProccessible(block);
        const hasInlineStyles = blockHasInlineStyles(rawBlock);
        // if it is not proccessable then no need to proceed
        if (!isProccessable) return;

        if (hasInlineStyles) {
            blockInlineStylesArray = rawBlock.inlineStyleRanges.map(
                range => getStyledSegment(range, block.getText())
            );
        }

        const blocksNewText = processFunction(block.getText());

        newContentState = updateContentState(
            newContentState,
            block,
            blocksNewText,
            blockInlineStylesArray
        );

    });

    return newContentState;
}


export function transliterate (editorState) {

    const selection = editorState.getSelection();

    // if selection is being transliterated
    if(!selection.isCollapsed()) {
        // we need to extract selected text first
        const newContentState = processBlocksText(
            editorState.getCurrentContent(),
            transliterateText,
            selection
        )
        // generating new editorState and returning it
        const newState = EditorState.push(editorState, newContentState);
        return newState;

    }

    // elif entire editor content is being transliterated
    // we'll be modifying this `newContentState`
    const newContentState = processBlocksText(
        editorState.getCurrentContent(),
        transliterateText
    );

    // const newContentState = ContentState.createFromBlockArray(newBlocks);
    const newState = EditorState.push(editorState, newContentState);
	return newState;
}
