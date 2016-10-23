// taken from: https://github.com/facebook/draft-js/blob/master/examples/rich/rich.html

import React from 'react';
import ReactDOM from 'react-dom';
import { Map } from 'immutable';

import {
    AtomicBlockUtils,
    convertToRaw,
    Editor,
    EditorState,
    RichUtils,
    DefaultDraftBlockRenderMap,
    CompositeDecorator,
    ContentState,
    Entity,
    Modifier,
    SelectionState
} from 'draft-js';

import {stateToMarkdown} from 'draft-js-export-markdown';
import {stateToHTML} from 'draft-js-export-html';


import AffixWrapper from './components/affix';
import { Link } from './features/entities';
import {
    InlineStyleControls,
    BlockStyleControls
} from './components/controls';
import {
    CustomBlockRenderer,
    getBlockStyle,
    customBlockRenderMap
} from './features/custom-blocks';

import { findLinkEntities } from './features/entities';
import { transliterate } from './features/block-text-proccess-functions';
import withPersistance from './features/persistance';
import { EditorStyleMap } from './utils/styles';

import Toolbar from './components/toolbar';
import {
    getSelectionRange,
    getSelectedBlockElement,
    getSelectionCoords
} from './utils/selection';




/// editor
class SynapsesTextEditor extends React.Component {

    constructor(props) {
        super(props);

        const linkDecorator = new CompositeDecorator([
            {
                strategy: findLinkEntities,
                component: Link,
            },
        ]);

        this.state = {
            editorState: EditorState.createEmpty(linkDecorator),
            showPreview: false,
            showMarkdown: false,
            showHtml: false,
            link: {
                showInput: false,
                url: ''
            },
            media: {
                showInput: false,
                url: '',
                type: ''
            },
            inlineToolbar: {
                show: false,
                position: {
                    top: 0,
                    left: 0
                }
            }
        };


        this.togglePreview = () => this.setState({
          showPreview: !this.state.showPreview
        });

        this.focus = () => {
            let editorRoot = document.getElementById('editor-root');
            editorRoot.style.border = "1px solid #337AB7";
            this.refs.editor.focus();
        }

        this.blur = () => {
            let editorRoot = document.getElementById('editor-root');
            editorRoot.style.border = "1px solid #ddd";
        }

        // this.onChange = (editorState) => this.setState({editorState});

        this.onChange = (editorState) => {
            if (!editorState.getSelection().isCollapsed()) {
                const selectionRange = getSelectionRange();
                const selectionCoords = getSelectionCoords(selectionRange);
                this.setState({
                    inlineToolbar: {
                        show: true,
                        position: {
                            top: selectionCoords.offsetTop,
                            left: selectionCoords.offsetLeft
                        }
                    }
                });
            } else {
                this.setState({ inlineToolbar: { show: false } });
            }

          this.setState({ editorState });
          setTimeout(this.updateSelection, 0);
        }

        this.updateStateFromToolbar = (
          newState, callback
        ) => this.setState(newState, callback);

        this.updateSelection = () => this._updateSelection();

        this.logState = () => {
            const content = this.state.editorState.getCurrentContent();
            console.log(convertToRaw(content));
            console.log(this.state);
        };

        this.toggleMarkdown = () => this.setState({
          showMarkdown: !this.state.showMarkdown
        });
        this.toggleHtml = () => this.setState({showHtml: !this.state.showHtml});
        this.stateToMarkdown = () => stateToMarkdown(
          this.state.editorState.getCurrentContent()
        );
        this.stateToHtml = () => stateToHTML(
          this.state.editorState.getCurrentContent()
        );

        this.clearEditorContent = () => this.setState({
            editorState: EditorState.push(
                this.state.editorState,
                ContentState.createFromText(''))
        })

        this.transliterate = () => this.onChange(
            withPersistance(
                this.state.editorState,
                transliterate
            )
        );

    }

    _updateSelection() {
        const selectionRange = getSelectionRange();
        let selectedBlock;
        if (selectionRange) {
            selectedBlock = getSelectedBlockElement(selectionRange);
        }
        this.setState({
            selectedBlock,
            selectionRange
        });
    }

    // common methods
    _handleKeyCommand(command) {
        const {editorState} = this.state;
        const newState = RichUtils.handleKeyCommand(editorState, command);
        if (newState) {
            this.onChange(newState);
            return true;
        }
        return false;
    }


    render() {

        const { editorState } = this.state;

        // If the user changes block type before entering any text, we can
        // either style the placeholder or hide it. Let's just hide it now.
        let className = 'RichEditor-editor';
        var contentState = editorState.getCurrentContent();
        if (!contentState.hasText()) {
            if (contentState.getBlockMap().first().getType() !== 'unstyled') {
                className += ' RichEditor-hidePlaceholder';
            }
        }

        return (
            <div className="RichEditor-root"
                id='editor-root'
                onBlur={this.blur}

                >
                {  /*this.state.inlineToolbar.show ?
                    <Toolbar
                        parentState={this.state}
                        updateParentState={this.updateStateFromToolbar}
                        updateEditorState={this.onChange}
                        editorFocus={this.focus}
                        inline={true}
                        position={this.state.inlineToolbar.position}
                    /> : null */
                }

                { /* <AffixWrapper className="RichEditor-panel" offset={50} > */ }

                    <Toolbar
                        parentState={this.state}
                        updateParentState={this.updateStateFromToolbar}
                        updateEditorState={this.onChange}
                        editorFocus={this.focus}
                        clearEditorContent={this.clearEditorContent}
                        transliterate={this.transliterate}
                    />

                {/*</AffixWrapper>*/}

                <div className={className} onClick={this.focus} id="editor">
                    <Editor
                        blockRendererFn={CustomBlockRenderer}
                        blockStyleFn={getBlockStyle}
                        customStyleMap={EditorStyleMap}
                        blockRenderMap={customBlockRenderMap}
                        editorState={editorState}
                        handleKeyCommand={this.handleKeyCommand}
                        onChange={this.onChange}
                        placeholder="Qani boshladik..."
                        ref="editor"
                        spellCheck={true}
                    />
                </div>
                <input
                    onClick={this.logState}
                    type="button"
                    value="Log State"
                />
                <input
                    onClick={this.togglePreview}
                    type="button"
                    value="Preview"
                />
                <input
                    onClick={this.toggleMarkdown}
                    type="button"
                    value="Markdown"
                />
                <input
                    onClick={this.toggleHtml}
                    type="button"
                    value="Html"
                />
                <input
                    onClick={() => {
                        window.blockmap = editorState
                          .getCurrentContent().blockMap;
                    }}
                    type="button"
                    value="current content"
                />
                <br />
                <hr />
                <div>
                    {this.state.showPreview ?
                        <Editor
                            blockRendererFn={CustomBlockRenderer}
                            blockStyleFn={getBlockStyle}
                            customStyleMap={EditorStyleMap}
                            blockRenderMap={customBlockRenderMap}
                            editorState={editorState}
                            readOnly={true}
                        /> : null
                    }
                </div>
                { this.state.showMarkdown ?
                    <textarea
                        style={{width: '500px', height: "200px"}}
                        defaultValue={this.stateToMarkdown()}></textarea> : null
                }
                { this.state.showHtml ?
                    <textarea
                        style={{width: '500px', height: "200px"}}
                        defaultValue={this.stateToHtml()}></textarea> : null
                }
            </div>
        );
    }
}


export default SynapsesTextEditor;

// ReactDOM.render(
// 	<SynapsesTextEditor />,
// 	document.getElementById('app-root')
// );
