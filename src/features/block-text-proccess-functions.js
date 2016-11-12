import transliteration, { whichChar } from '../transliteration';

export function transliterate(text) {
    // TODO (sehrob): to be implemented
    const currentChar = whichChar(text);
    return transliteration(currentChar, text);
}
