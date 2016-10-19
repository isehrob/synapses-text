


// accepts contentState and returns the special
// inlineStyles object for further proccessing
export function persistStyles(contentState) {

}

// accepts contentState and returns the special
// entities object for further proccessing
export function persistEntities(contentState){

}

// gets contentState and contentBlock immutable record
// and modifies contentBlocks text, updates contentState
// and returns it
export function proccessContentBlock(contentState, block, proccessFunction){

}

// gets contentState and selection object and returns the
// updated contentState with selection part proccessed
export function proccessSelected(contentState, selection) {

}

// gets contentState and special persistedStyles object and
// apply it to the contentState and returns updated contentState
export function reApplyPersistedStyles(contentState, persistedStyles) {

}

// gets contentState and special persistedEntities object and
// apply it to the contentState and returns updated contentState
export function reApplyPersistedEntities(contentState, persistedEntities) {

}

// main function which proccess block text with rich formatting persistance
export defautl processWithPersistance(
    contentState,
    proccessFunction,
    selection = false
) {
    
}
