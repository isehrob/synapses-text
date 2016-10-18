
var text = "quq bububu jiji kaka dudu gogokala. bulumba-da jku, dasla 'akjds' sdkjs - lskdjs 'kjdfj sdkfjs, dskfjsd' lkjdlfkjsa!";

var ranges = [{offset: 3, length: 19, style: 'green'}, {offset: 32, style: 'black'}];


function getPosition(offset, start) {
	
	//  here text is a global variable
	//  TODO (sehrob): got to do something with it
	var character = text.charAt(offset);

	//  if it is a start position and 
	//  if character at offset is a space
	// 	then return offset + 1 otherwise  
	// 	find the start and return
	if(start) {
		if(character && character == " "){
			return ++offset;
		} else {
			// while the text is not exhausted to the beginning
			while(offset > -1) {
				character = text.charAt(offset);
				if (character && character == " ") {
					return ++offset;
				}
				// advance leftwards
				--offset;
			}
		}
	} else {
		// 	otherwise if character at offset is a space
		// 	then return offset - 1 else find and
		//  return end position
		if(character && character == " "){
			return offset;
		} else {
			// while the text is not exhausted to the end
			while(offset < text.length) {
				character = text.charAt(offset);
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
function getStyledSegment(range) {
	// if it is a segment with multiple words
	if(range.length) {
		var segment = text.substring(
			getPosition(range.offset, true), 
			getPosition(range.length));
	} else { // when there is only one word
		var segment = text.substring(
			getPosition(range.offset, true), 
			getPosition(range.offset));
	}

	// turn it into array so we could find out
	// from which to which word gets styled or
	// decorated
	segment = segment.split(" ");
	
	return {
		start: text.split(" ").indexOf(segment[0]), 
		length: segment.length, 
		style: range.style
	};
}




