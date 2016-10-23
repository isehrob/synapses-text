
import {
    convertToRaw,
    SelectionState
} from 'draft-js';



// given contentBlock's text content and style offset it tries
// to figure out boundaries of the word(s) that's being styled
export function getWordBoundaryFromChrOffset(offset, blockText, start = false) {

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

// helper function for calculating end offset of the styled range
export function getRangeEnd(range) {
    return (range.length + range.offset) - 1;
}

// helper function which extracts the part of the text untill
// styled segment
export function extractPreText(startBoundary, text) {
    return (startBoundary > 0) ?
        text.substring(0, startBoundary) : false;
}

export function extractStyledSegment(text, start, end) {
    return text.substring(start, end);
}

// gets range object and text content of the contentBlock
// objects and returns a special intermediary object which
// is used to figure out the ranges of modified text to be
// styled again
export function convertRangeFromChrToWdLevel(range, blockText) {

    const rangeEnd = getRangeEnd(range);
    const startBoundary = getWordBoundaryFromChrOffset(
        range.offset, blockText, true);
    const endBoundary = getWordBoundaryFromChrOffset(rangeEnd, blockText);

    // sometimes if there is a word repeated in the text then
    // indexOf returns the first ones index but styled one obiously
    // may not be the first one so I'm doing this trick here but
    const preText = extractPreText(startBoundary, blockText);
    let segment = extractStyledSegment(blockText, startBoundary, endBoundary);

    // don't know how but segment my have spaces
    // at the start and the end, so clearing it
    segment = segment.trim();

    // turn it into array so we could find out
    // from which to which word gets styled or
    // decorated
    segment = segment.split(" ");

    // special object that represents style info at word level
    // used at reapplying the style back to the text
    // we need extract 1 from preText's length because we need array indexes
    return {
        start: (preText) ? preText.split(" ").length - 1 : 0,
        length: segment.length,
        style: range.style
    };

}


// helper function which converts style range info from word level
// back to the character level
export function convertRangeFromWdToChrLevel(block, style) {

    const arrayOfWords = block.getText().split(" ");
    let startWord = arrayOfWords[style.start];
    // here we will compute the range to be styled
    if(style.length > 1) {
        // substracting 1 from length because length of the
        // first word already included into the segment
        for(let p = style.length - 1; p > 0; --p) {
            startWord += " " + arrayOfWords[p + style.start]
        }
    }

    // maybe start is the first character
    let startOffset;
    if(style.start === 0) {
        startOffset = 0;
    } else {
        startOffset = arrayOfWords.splice(0, style.start)
            .join(" ").length + 1;
    }

    let endOffset = startOffset + startWord.length;

    return {startOffset, endOffset};
}

// helper function to get the text content of the contentBlock object
export function getBlockText(selection = false, block) {
    if(selection) {
        return block.getText().slice(
            selection.getStartOffset(),
            selection.getEndOffset())
    }
    return block.getText();
}

// helper function for creating SelectionState for a contentBlock
// if start and end offsets given then creates for the part of
// contentBlock text else creates selection for entire block
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

// gets contentBlock and checks whether it's content is proccessable
export function blockIsProccessible(block) {
    return !(block.getType() === 'atomic' || block.getText().trim() === "");
}
