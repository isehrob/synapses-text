// taken from: https://github.com/facebook/draft-js/blob/master/examples/rich/rich.html
  
import React from 'react';
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
} from 'draft-js';


import AffixWrapper from './affix';
import { Link } from './custom-blocks';
import { InlineStyleControls, BlockStyleControls } from './style-controls';
import { CustomBlockRenderer, getBlockStyle, customBlockRenderMap } from './custom-block-render';
import { findLinkEntities } from './strategies';
import { EditorStyleMap } from './styles';

import InlineToolbar from './inline-toolbar';
import { getSelectionRange, getSelectedBlockElement, getSelectionCoords } from './inline-toolbar';




/// editor
class RichEditor extends React.Component {

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


        this.togglePreview = () => this.setState({showPreview: !this.state.showPreview});

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

        this.updateStateFromToolbar = (newState) => this.setState(newState);

        this.updateSelection = () => this._updateSelection();

        this.onURLChange = (e) => this.setState({
            link: {url: e.target.value, showInput: true}
        }); 

        this.onMediaURLChange = (e) => this.setState({
            media: {url: e.target.value, type: this.state.media.type, showInput: true}
        });

        this.logState = () => {
            const content = this.state.editorState.getCurrentContent();
            console.log(convertToRaw(content));
            console.log(this.state);
        };

        // rich styling 
        this.handleKeyCommand = (command) => this._handleKeyCommand(command);
        this.toggleBlockType = (type) => this._toggleBlockType(type);
        this.toggleInlineStyle = (style) => this._toggleInlineStyle(style);

        // link functionality
        this.promptForLink = (e) => this._promptForLink(e);
        this.confirmLink = (e) => this._confirmLink(e);
        this.onLinkInputKeyDown = (e) => this._onInputKeyDown('link', e);
        this.removeLink = (e) => this._removeLink(e);

        // media functionality
        // this.addAudio = this._addAudio.bind(this);
        this.addImage = () => this._promptForMedia('image');
        this.addVideo = () => this._promptForMedia('video');
        this.confirmMedia = (e) => this._confirmMedia(e);
        this.onMediaURLInputKeyDown = (e) => this._onInputKeyDown('media', e);

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

    _toggleBlockType(blockType) {
        this.onChange(
            RichUtils.toggleBlockType(
            this.state.editorState,
            blockType
        ));
    }

    _toggleInlineStyle(inlineStyle) {
        this.onChange(
            RichUtils.toggleInlineStyle(
            this.state.editorState,
            inlineStyle
        ));
    }

    // link methods
    _promptForLink(e) {
        e.preventDefault();
        const {editorState} = this.state;
        const selection = editorState.getSelection();
        if (!selection.isCollapsed()) {
            this.setState(
                { link: {showInput: true, url: ''} }, 
                () => setTimeout(() => this.refs.url.focus(), 0)
            );
        }
    }

    _confirmLink(e) {
        e.preventDefault();
        const {editorState, link} = this.state;
        const entityKey = Entity.create('LINK', 'MUTABLE', {url: link.url});
        this.setState(
            {
                editorState: RichUtils.toggleLink(
                    editorState,
                    editorState.getSelection(),
                    entityKey),
                link: { showInput: false, url: ''}
            }, 
            () => setTimeout(() => this.focus(), 0)
        );
    }

    _removeLink(e) {
        e.preventDefault();
        const {editorState} = this.state;
        const selection = editorState.getSelection();
        if (!selection.isCollapsed()) {
            this.setState({
                editorState: RichUtils.toggleLink(editorState, selection, null),
            });
        }
    }

    // media methods
    _promptForMedia(type) {
        this.setState(
            { media: {showInput: true, url: '', type: type}}, 
            () => setTimeout(() => this.refs.url.focus(), 0)
        );
    }

    _confirmMedia(e) {
        e.preventDefault();
        const {editorState, media} = this.state;
        const entityKey = Entity.create(media.type, 'IMMUTABLE', {src: media.url})
        this.setState(
            { 
                editorState: AtomicBlockUtils.insertAtomicBlock(
                    editorState, entityKey, ' '
                ),
                media: { showInput: false, url: ''}
            }, 
            () => setTimeout(() => this.focus(), 0)
        );
    }

    _onInputKeyDown(type, e){
        if (e.which === 13) {
            if (type === 'link') this.confirmLink(e);
            else if (type === 'media') this.confirmMedia(e);
        }
    }


    render() {

        let urlInput;
        if (this.state.link.showInput) {
            urlInput =
                <div>
                    <input
                        onChange={this.onURLChange}
                        ref="url"
                        type="text"
                        value={this.state.link.url}
                        onKeyDown={this.onLinkInputKeyDown}
                    />
                    <button onMouseDown={this.confirmLink}>
                        Confirm
                    </button>
                </div>;
        }

        let mediaUrlInput;
        if (this.state.media.showInput) {
            mediaUrlInput =
                <div>
                    <input
                        onChange={this.onMediaURLChange}
                        ref="url"
                        type="text"
                        value={this.state.media.url}
                        onKeyDown={this.onMediaURLInputKeyDown}
                    />
                    <button onMouseDown={this.confirmMedia}>
                        Confirm
                    </button>
                </div>;
        }
      
        const {editorState} = this.state;

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

                {this.state.inlineToolbar.show ? 
                    <InlineToolbar 
                        editorState={editorState} 
                        toggleInlineStyle={this.toggleInlineStyle}
                        toggleBlockType={this.toggleBlockType}
                        position={this.state.inlineToolbar.position}
                    /> : null
                }

                <AffixWrapper className="RichEditor-panel" offset={50} >

                    <InlineStyleControls
                        className="RichEditor-fromatting-button-block"
                        editorState={editorState}
                        onToggle={this.toggleInlineStyle}
                    />
                    <BlockStyleControls
                        className="RichEditor-fromatting-button-block"
                        editorState={editorState}
                        onToggle={this.toggleBlockType}
                    />

                    <div className="RichEditor-fromatting-button-block">
                        <button
                            onMouseDown={this.promptForLink}
                            style={{marginRight: 10, background: 'none', border: 'none'}}>
                            <span className="glyphicon glyphicon-link"></span>
                        </button>
                        <button onMouseDown={this.removeLink}
                            style={{marginRight: 10, background: 'none', border: 'none'}}>
                            <span className="glyphicon glyphicon-remove-sign"></span>
                        </button>
                    </div>

                    <div className="RichEditor-fromatting-button-block">
                        <button onMouseDown={this.addImage} 
                            style={{marginRight: 10, background: 'none', border: 'none'}}>
                            <span className="glyphicon glyphicon-picture"></span>
                        </button>
                        <button onMouseDown={this.addVideo} 
                            style={{marginRight: 10, background: 'none', border: 'none'}}>
                            <span className="glyphicon glyphicon-facetime-video"></span>
                        </button>
                    </div>

                    {urlInput}
                    {mediaUrlInput}

                </AffixWrapper>

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
            </div>
        );
    }
}


export default RichEditor;
