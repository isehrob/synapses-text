// main-toolbar

import React from 'react';
import {
	RichUtils,
	Entity,
	AtomicBlockUtils
} from 'draft-js';
import {
	InlineStyleControls,
	BlockStyleControls
} from './controls';
import { SpecialButton } from './buttons';



export default class Toolbar extends React.Component {

	constructor(props) {
		super(props);

		// for decorations and others
		this.updateParentState = (
			newState, callback
		) => props.updateParentState(newState, callback);
		// for block and inline style changes: it is editors onchage method
		// other variants didn't work; don't know why
		this.updateEditorState = (newState) => props.updateEditorState(
			newState
		);

		this.onURLChange = (e) => this.updateParentState({
            link: {url: e.target.value, showInput: true}
        });

        this.onMediaURLChange = (e) => this.updateParentState({
            media: {
				url: e.target.value,
				type: this.props.parentState.media.type,
				showInput: true
			}
        });

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

        // clears content
        this.clearEditorContent = () => this.props.clearEditorContent();
	}

	_toggleBlockType(blockType) {
        this.updateEditorState(
            RichUtils.toggleBlockType(
            this.props.parentState.editorState,
            blockType
        ));
    }

    _toggleInlineStyle(inlineStyle) {
        this.updateEditorState(
            RichUtils.toggleInlineStyle(
            this.props.parentState.editorState,
            inlineStyle
        ));
    }

    // link methods
    _promptForLink(e) {
        e.preventDefault();
        const {editorState} = this.props.parentState;
        const selection = editorState.getSelection();
        if (!selection.isCollapsed()) {
            this.updateParentState(
                { link: {showInput: true, url: ''} }
            );
        }
    }

    _confirmLink(e) {
        e.preventDefault();
        const {editorState, link} = this.props.parentState;
        const entityKey = Entity.create('LINK', 'MUTABLE', {url: link.url});
        this.updateParentState(
            {
                editorState: RichUtils.toggleLink(
                    editorState,
                    editorState.getSelection(),
                    entityKey),
                link: { showInput: false, url: ''}
            },
            () => setTimeout(() => this.props.editorFocus(), 0)
        );
    }

    _removeLink(e) {
        e.preventDefault();
        const {editorState} = this.props.parentState;
        const selection = editorState.getSelection();
        if (!selection.isCollapsed()) {
            this.updateParentState({
                editorState: RichUtils.toggleLink(editorState, selection, null),
            });
        }
    }

    // media methods
    _promptForMedia(type) {
        this.updateParentState(
            { media: {showInput: true, url: '', type: type}}
        );
    }

    _confirmMedia(e) {
        e.preventDefault();
        const {editorState, media} = this.props.parentState;
        const entityKey = Entity.create(media.type, 'IMMUTABLE', {src: media.url})
        this.updateParentState(
            {
                editorState: AtomicBlockUtils.insertAtomicBlock(
                    editorState, entityKey, ' '
                ),
                media: { showInput: false, url: ''}
            },
            () => setTimeout(() => this.props.editorFocus(), 0)
        );
    }

    _onInputKeyDown(type, e){
        if (e.which === 13) {
            if (type === 'link') this.confirmLink(e);
            else if (type === 'media') this.confirmMedia(e);
        }
    }


	render () {

		const { editorState, link, media } = this.props.parentState;

		let extraClass;
		if (this.props.inline) extraClass = 'inline-toolbar';

		let urlInput;
        if (link.showInput) {
            urlInput =
                <div>
                    <input
                        onChange={this.onURLChange}
                        ref={(ref) => ref ? ref.focus() : null }
                        type="text"
                        value={link.url}
                        onKeyDown={this.onLinkInputKeyDown}
                    />
                    <button onMouseDown={this.confirmLink}>
                        Confirm
                    </button>
                </div>;
        }

        let mediaUrlInput;
        if (media.showInput) {
            mediaUrlInput =
                <div>
                    <input
                        onChange={this.onMediaURLChange}
                        ref={(ref) => ref ? ref.focus() : null }
                        type="text"
                        value={media.url}
                        onKeyDown={this.onMediaURLInputKeyDown}
                    />
                    <button onMouseDown={this.confirmMedia}>
                        Confirm
                    </button>
                </div>;
        }

		return (
			<div className={extraClass} style={this.props.position}>
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
                    <SpecialButton
                        mouseDownCallback={this.promptForLink}
                        tooltip="Link qo'yish">
                        <span className="flaticon-link"></span>
                    </SpecialButton>
                    <SpecialButton
                    	mouseDownCallback={this.removeLink}
                    	tooltip="Linkni o'chirish">
                        <span className="flaticon-broken-link"></span>
                    </SpecialButton>
                </div>

                { !this.props.inline ?
                	<div className="RichEditor-fromatting-button-block">
	                    <SpecialButton
	                    	mouseDownCallback={this.addImage}
	                    	tooltip="Rasm qo'yish">
	                        <span className="flaticon-add-picture"></span>
	                    </SpecialButton>
	                    <SpecialButton
	                    	mouseDownCallback={this.addVideo}
	                    	tooltip="Video qo'yish">
	                        <span className="flaticon-video-add-button"></span>
	                    </SpecialButton>
	                </div> : null
                }

                <div className="RichEditor-fromatting-button-block">
                    <SpecialButton
                        mouseDownCallback={this.props.transliterate}
                        tooltip="Transliteratsiya">
                        <span className="flaticon-arrows"></span>
                    </SpecialButton>
                    <SpecialButton
                    	mouseDownCallback={null}
                        tooltip="Imloni tekshirish">
                        <span className="flaticon-edit-text"></span>
                    </SpecialButton>
                </div>


                {urlInput}
                {mediaUrlInput}

                <div className="pull-right">
                    <SpecialButton
                        mouseDownCallback={this.clearEditorContent}
                        tooltip="O'chirish">
                        <span className="flaticon-eraser"></span>
                    </SpecialButton>
                </div>

                {
                	this.props.inline ? <div className="inline-toolbar-triangle"></div> : null
                }

			</div>
		);
	}
}
