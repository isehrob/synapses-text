webpackJsonp([0,2],{0:function(e,t,n){"use strict";function o(e){return e&&e.__esModule?e:{"default":e}}var r=n(1),l=o(r),a=n(30),i=o(a),u=n(163),c=o(u),s=function(e){return l["default"].createElement("div",{className:"row"},l["default"].createElement("div",{className:"col-main"},l["default"].createElement(c["default"],null)),l["default"].createElement("div",{className:"clearfix"}))};i["default"].render(l["default"].createElement(s,null),document.getElementById("app-root"))},163:function(e,t,n){"use strict";function o(e){return e&&e.__esModule?e:{"default":e}}function r(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function l(e,t){if(!e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!t||"object"!=typeof t&&"function"!=typeof t?e:t}function a(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}Object.defineProperty(t,"__esModule",{value:!0});var i=function(){function e(e,t){for(var n=0;n<t.length;n++){var o=t[n];o.enumerable=o.enumerable||!1,o.configurable=!0,"value"in o&&(o.writable=!0),Object.defineProperty(e,o.key,o)}}return function(t,n,o){return n&&e(t.prototype,n),o&&e(t,o),t}}(),u=n(1),c=o(u),s=n(30),f=(o(s),n(164),n(165)),d=n(305),p=n(313),h=n(318),m=(o(h),n(319)),y=(n(320),n(323)),g=n(324),v=n(325),b=o(v),E=n(327),S=n(328),k=o(S),w=n(329),_=function(e){function t(e){r(this,t);var n=l(this,(t.__proto__||Object.getPrototypeOf(t)).call(this,e)),o=new f.CompositeDecorator([{strategy:m.findLinkEntities,component:m.Link}]);return n.state={editorState:f.EditorState.createEmpty(o),showPreview:!1,showMarkdown:!1,showHtml:!1,link:{showInput:!1,url:""},media:{showInput:!1,url:"",type:""},inlineToolbar:{show:!1,position:{top:0,left:0}}},n.togglePreview=function(){return n.setState({showPreview:!n.state.showPreview})},n.focus=function(){var e=document.getElementById("editor-root");e.style.border="1px solid #337AB7",n.refs.editor.focus()},n.blur=function(){var e=document.getElementById("editor-root");e.style.border="1px solid #ddd"},n.onChange=function(e){if(e.getSelection().isCollapsed())n.setState({inlineToolbar:{show:!1}});else{var t=(0,w.getSelectionRange)(),o=(0,w.getSelectionCoords)(t);n.setState({inlineToolbar:{show:!0,position:{top:o.offsetTop,left:o.offsetLeft}}})}n.setState({editorState:e}),setTimeout(n.updateSelection,0)},n.updateStateFromToolbar=function(e,t){return n.setState(e,t)},n.updateSelection=function(){return n._updateSelection()},n.logState=function(){var e=n.state.editorState.getCurrentContent();console.log((0,f.convertToRaw)(e)),console.log(n.state)},n.toggleMarkdown=function(){return n.setState({showMarkdown:!n.state.showMarkdown})},n.toggleHtml=function(){return n.setState({showHtml:!n.state.showHtml})},n.stateToMarkdown=function(){return(0,d.stateToMarkdown)(n.state.editorState.getCurrentContent())},n.stateToHtml=function(){return(0,p.stateToHTML)(n.state.editorState.getCurrentContent())},n.clearEditorContent=function(){return n.setState({editorState:f.EditorState.push(n.state.editorState,f.ContentState.createFromText(""))})},n.transliterate=function(){return n.onChange((0,b["default"])(n.state.editorState,g.transliterate))},n}return a(t,e),i(t,[{key:"_updateSelection",value:function(){var e=(0,w.getSelectionRange)(),t=void 0;e&&(t=(0,w.getSelectedBlockElement)(e)),this.setState({selectedBlock:t,selectionRange:e})}},{key:"_handleKeyCommand",value:function(e){var t=this.state.editorState,n=f.RichUtils.handleKeyCommand(t,e);return!!n&&(this.onChange(n),!0)}},{key:"render",value:function(){var e=this.state.editorState,t="RichEditor-editor",n=e.getCurrentContent();return n.hasText()||"unstyled"!==n.getBlockMap().first().getType()&&(t+=" RichEditor-hidePlaceholder"),c["default"].createElement("div",{className:"RichEditor-root",id:"editor-root",onBlur:this.blur},c["default"].createElement(k["default"],{parentState:this.state,updateParentState:this.updateStateFromToolbar,updateEditorState:this.onChange,editorFocus:this.focus,clearEditorContent:this.clearEditorContent,transliterate:this.transliterate}),c["default"].createElement("div",{className:t,onClick:this.focus,id:"editor"},c["default"].createElement(f.Editor,{blockRendererFn:y.CustomBlockRenderer,blockStyleFn:y.getBlockStyle,customStyleMap:E.EditorStyleMap,blockRenderMap:y.customBlockRenderMap,editorState:e,handleKeyCommand:this.handleKeyCommand,onChange:this.onChange,placeholder:"Qani boshladik...",ref:"editor",spellCheck:!0})),c["default"].createElement("input",{onClick:this.logState,type:"button",value:"Log State"}),c["default"].createElement("input",{onClick:this.togglePreview,type:"button",value:"Preview"}),c["default"].createElement("input",{onClick:this.toggleMarkdown,type:"button",value:"Markdown"}),c["default"].createElement("input",{onClick:this.toggleHtml,type:"button",value:"Html"}),c["default"].createElement("input",{onClick:function(){window.blockmap=e.getCurrentContent().blockMap},type:"button",value:"current content"}),c["default"].createElement("br",null),c["default"].createElement("hr",null),c["default"].createElement("div",null,this.state.showPreview?c["default"].createElement(f.Editor,{blockRendererFn:y.CustomBlockRenderer,blockStyleFn:y.getBlockStyle,customStyleMap:E.EditorStyleMap,blockRenderMap:y.customBlockRenderMap,editorState:e,readOnly:!0}):null),this.state.showMarkdown?c["default"].createElement("textarea",{style:{width:"500px",height:"200px"},defaultValue:this.stateToMarkdown()}):null,this.state.showHtml?c["default"].createElement("textarea",{style:{width:"500px",height:"200px"},defaultValue:this.stateToHtml()}):null)}}]),t}(c["default"].Component);t["default"]=_},318:function(e,t,n){"use strict";function o(e){return e&&e.__esModule?e:{"default":e}}function r(e,t){var n={};for(var o in e)t.indexOf(o)>=0||Object.prototype.hasOwnProperty.call(e,o)&&(n[o]=e[o]);return n}function l(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function a(e,t){if(!e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!t||"object"!=typeof t&&"function"!=typeof t?e:t}function i(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}Object.defineProperty(t,"__esModule",{value:!0}),t["default"]=void 0;var u=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var o in n)Object.prototype.hasOwnProperty.call(n,o)&&(e[o]=n[o])}return e},c=function(){function e(e,t){for(var n=0;n<t.length;n++){var o=t[n];o.enumerable=o.enumerable||!1,o.configurable=!0,"value"in o&&(o.writable=!0),Object.defineProperty(e,o.key,o)}}return function(t,n,o){return n&&e(t.prototype,n),o&&e(t,o),t}}(),s=n(1),f=o(s),d=function(e){function t(e){l(this,t);var n=a(this,(t.__proto__||Object.getPrototypeOf(t)).call(this,e));return n.state={affix:!1},n.handleScroll=function(){return n._handleScroll()},n}return i(t,e),c(t,[{key:"_handleScroll",value:function(){var e=this.state.affix,t=this.props.offset,n=document.documentElement.scrollTop||document.body.scrollTop;!e&&n>=t&&this.setState({affix:!0}),e&&n<t&&this.setState({affix:!1})}},{key:"componentDidMount",value:function(){window.addEventListener("scroll",this.handleScroll)}},{key:"componentWillUnmount",value:function(){window.removeEventListener("scroll",this.handleScroll)}},{key:"render",value:function(){var e=this.state.affix?"affix":"",t=this.props,n=t.className,o=(t.offset,r(t,["className","offset"]));return f["default"].createElement("div",u({},o,{className:n+" "+e}),this.props.children)}}]),t}(f["default"].Component);d.propTypes={offset:f["default"].PropTypes.number},t["default"]=d},319:function(e,t,n){"use strict";function o(e){return e&&e.__esModule?e:{"default":e}}function r(e,t){e.findEntityRanges(function(e){var t=e.getEntity();return null!==t&&"LINK"===i.Entity.get(t).getType()},t)}Object.defineProperty(t,"__esModule",{value:!0}),t.Media=t.Link=void 0,t.findLinkEntities=r;var l=n(1),a=o(l),i=n(165),u=(t.Link=function(e){var t=i.Entity.get(e.entityKey).getData(),n=t.url;return a["default"].createElement("a",{href:n,style:{textDecoration:"underline",color:"blue"}},e.children)},function(e){return a["default"].createElement("img",{src:e.src})}),c=function(e){return a["default"].createElement("video",{controls:!0,src:e.src,style:{width:"100%",padding:"20px 50px"}})};t.Media=function(e){var t=i.Entity.get(e.block.getEntityAt(0)),n=t.getData(),o=n.src,r=t.getType(),l=null;return"image"===r?l=a["default"].createElement(u,{src:o}):"video"===r&&(l=a["default"].createElement(c,{src:o})),l}},320:function(e,t,n){"use strict";function o(e){return e&&e.__esModule?e:{"default":e}}Object.defineProperty(t,"__esModule",{value:!0}),t.InlineStyleControls=t.BlockStyleControls=void 0;var r=n(1),l=o(r),a=n(321),i=n(322);t.BlockStyleControls=function(e){var t=e.editorState,n=t.getSelection(),o=t.getCurrentContent().getBlockForKey(n.getStartKey()).getType();return l["default"].createElement("div",{className:"RichEditor-controls "+e.className,style:e.extraStyle},i.BLOCK_TYPES.map(function(t,n){return l["default"].createElement(a.StyleButton,{key:t.label,active:t.style===o,onToggle:e.onToggle,style:t.style,tooltip:t.tooltip},l["default"].createElement(t.label,{key:n}))}),l["default"].createElement("select",{onChange:e.onToggle,value:o},i.HEADER_TYPES.map(function(e,t){return l["default"].createElement("option",{key:t,value:e.style,className:e.style},e.label)})))},t.InlineStyleControls=function(e){var t=e.editorState.getCurrentInlineStyle();return l["default"].createElement("div",{className:"RichEditor-controls "+e.className,style:e.extraStyle},i.INLINE_STYLES.map(function(n,o){return l["default"].createElement(a.StyleButton,{key:n.label,active:t.has(n.style),onToggle:e.onToggle,style:n.style,tooltip:n.tooltip},l["default"].createElement(n.label,{key:o}))}))}},321:function(e,t,n){"use strict";function o(e){return e&&e.__esModule?e:{"default":e}}function r(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function l(e,t){if(!e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!t||"object"!=typeof t&&"function"!=typeof t?e:t}function a(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}Object.defineProperty(t,"__esModule",{value:!0}),t.SpecialButton=t.StyleButton=void 0;var i=function(){function e(e,t){for(var n=0;n<t.length;n++){var o=t[n];o.enumerable=o.enumerable||!1,o.configurable=!0,"value"in o&&(o.writable=!0),Object.defineProperty(e,o.key,o)}}return function(t,n,o){return n&&e(t.prototype,n),o&&e(t,o),t}}(),u=n(1),c=o(u);t.StyleButton=function(e){function t(){r(this,t);var e=l(this,(t.__proto__||Object.getPrototypeOf(t)).call(this));return e.onToggle=function(t){t.preventDefault(),e.props.onToggle(e.props.style)},e.state={showTooltip:!1},e.toggleTooltip=function(t){return e.setState({showTooltip:!e.state.showTooltip})},e}return a(t,e),i(t,[{key:"render",value:function(){var e="RichEditor-styleButton";this.props.active&&(e+=" RichEditor-activeButton");var t=100*Math.log10(this.props.tooltip.length);return c["default"].createElement("span",{className:e,onMouseDown:this.onToggle,onMouseEnter:this.toggleTooltip,onMouseLeave:this.toggleTooltip},this.props.children,this.state.showTooltip?c["default"].createElement("span",{className:"tooltiptext",style:{width:t}},this.props.tooltip):null)}}]),t}(c["default"].Component),t.SpecialButton=function(e){function t(){r(this,t);var e=l(this,(t.__proto__||Object.getPrototypeOf(t)).call(this));return e.state={showTooltip:!1},e.toggleTooltip=function(t){return e.setState({showTooltip:!e.state.showTooltip})},e}return a(t,e),i(t,[{key:"render",value:function(){var e=100*Math.log10(this.props.tooltip.length);return c["default"].createElement("span",{className:"RichEditor-styleButton",onMouseDown:this.props.mouseDownCallback,onMouseEnter:this.toggleTooltip,onMouseLeave:this.toggleTooltip,style:this.props.extraStyle},this.props.children,this.state.showTooltip?c["default"].createElement("span",{className:"tooltiptext",style:{width:e}},this.props.tooltip):null)}}]),t}(c["default"].Component)},322:function(e,t,n){"use strict";function o(e){return e&&e.__esModule?e:{"default":e}}Object.defineProperty(t,"__esModule",{value:!0}),t.HEADER_TYPES=t.BLOCK_TYPES=t.INLINE_STYLES=void 0;var r=n(1),l=o(r);t.INLINE_STYLES=[{label:function(){return l["default"].createElement("span",{className:"flaticon-bold"})},style:"BOLD",tooltip:"Qalin"},{label:function(){return l["default"].createElement("span",{className:"flaticon-italic"})},style:"ITALIC",tooltip:"Qiya"},{label:function(){return l["default"].createElement("span",{className:"flaticon-underline"})},style:"UNDERLINE",tooltip:"Tagiga chizilgan"},{label:function(){return l["default"].createElement("span",{className:"flaticon-text-option"})},style:"CODE",tooltip:"Monospeys"}],t.BLOCK_TYPES=[{label:function(){return l["default"].createElement("span",{className:"flaticon-inverted-commas"})},style:"blockquote",tooltip:"Sitata"},{label:function(){return l["default"].createElement("span",{className:"flaticon-bullets"})},style:"unordered-list-item",tooltip:"Raqamsiz ro`yxat"},{label:function(){return l["default"].createElement("span",{className:"flaticon-text-align"})},style:"ordered-list-item",tooltip:"Raqamli ro`yxat"},{label:function(){return l["default"].createElement("span",{className:"flaticon-braces"})},style:"code-block",tooltip:"Kod"}],t.HEADER_TYPES=[{label:"Heading",style:"header-one"},{label:"Heading",style:"header-two"},{label:"Heading",style:"header-three"},{label:"Heading",style:"header-four"},{label:"Heading",style:"header-five"},{label:"Heading",style:"header-six"}]},323:function(e,t,n){"use strict";function o(e){return e&&e.__esModule?e:{"default":e}}function r(e){return"atomic"===e.getType()?{component:f.Media,editable:!1}:null}function l(e){switch(e.getType()){case"blockquote":return"RichEditor-blockquote";case"code-block":return"RichEditor-code-block";default:return null}}Object.defineProperty(t,"__esModule",{value:!0}),t.customBlockRenderMap=t.CustomCodeBlock=void 0,t.CustomBlockRenderer=r,t.getBlockStyle=l;var a=n(1),i=o(a),u=n(165),c=o(u),s=n(164),f=n(319),d=t.CustomCodeBlock=function(e){return i["default"].createElement("code",{style:{display:"block",padding:"20px"}},e.children)},p=(0,s.Map)({"code-block":{element:"div",wrapper:i["default"].createElement(d,null)}});t.customBlockRenderMap=c["default"].DefaultDraftBlockRenderMap.merge(p)},324:function(e,t){"use strict";function n(e){return e.toUpperCase()}Object.defineProperty(t,"__esModule",{value:!0}),t.transliterate=n},325:function(e,t,n){"use strict";function o(e){if(e&&e.__esModule)return e;var t={};if(null!=e)for(var n in e)Object.prototype.hasOwnProperty.call(e,n)&&(t[n]=e[n]);return t["default"]=e,t}function r(e){return e.inlineStyleRanges.map(function(t){return m.convertRangeFromChrToWdLevel(t,e.text)})}function l(e){}function a(e,t,n){return n.forEach(function(n){var o=m.convertRangeFromWdToChrLevel(t,n),r=m.createBlockSelection(t,o.startOffset,o.endOffset);e=p.Modifier.applyInlineStyle(e,r,n.style)}),e}function i(e,t){}function u(e,t,n){var o=m.createBlockSelection(n);return p.Modifier.replaceText(e,o,t(n.getText()))}function c(e){return function(t,n){var o=t.getBlockForKey(n.key),l=m.blockIsProccessible(o),i=n.inlineStyleRanges.length>0,c=void 0;return l?(i&&(c=r(n)),t=u(t,e,o),i&&(t=a(t,o,c)),t):t}}function s(e,t,n){var o=e.getBlockForKey(n.getAnchorKey()),r=t(m.getBlockText(n,o));return p.Modifier.replaceText(e,n,r)}function f(e,t){var n=(0,p.convertToRaw)(e).blocks,o=c(t);return n.reduce(function(e,t){return o(e,t)},e)}function d(e,t){var n=p.EditorState.push(e,t);return p.EditorState.moveSelectionToEnd(n)}Object.defineProperty(t,"__esModule",{value:!0}),t.persistStyles=r,t.persistEntities=l,t.reApplyPersistedStyles=a,t.reApplyPersistedEntities=i,t.replaceBlockText=u,t.generateContentBlockProccessor=c,t.proccessSelected=s,t.proccessWholeContent=f;var p=n(165),h=n(326),m=o(h);t["default"]=function(e,t){var n=e.getSelection(),o=e.getCurrentContent(),r=void 0;return r=n.isCollapsed()?f(o,t):s(o,t,n),d(e,r)}},326:function(e,t,n){"use strict";function o(e,t){var n=arguments.length>2&&void 0!==arguments[2]&&arguments[2];if(0===e)return e;var o=t.charAt(e);if(n){if(o&&" "==o)return++e;for(;e>-1;){if(o=t.charAt(e),o&&" "==o)return++e;--e}return 0}if(o&&" "==o)return e;for(;e<t.length;){if(o=t.charAt(e),o&&" "==o)return e;++e}return e}function r(e){return e.length+e.offset-1}function l(e,t){return e>0&&t.substring(0,e)}function a(e,t,n){return e.substring(t,n)}function i(e,t){var n=r(e),i=o(e.offset,t,!0),u=o(n,t),c=l(i,t),s=a(t,i,u);return s=s.trim(),s=s.split(" "),{start:c?c.split(" ").length-1:0,length:s.length,style:e.style}}function u(e,t){var n=e.getText().split(" "),o=n[t.start];if(t.length>1)for(var r=t.length-1;r>0;--r)o+=" "+n[r+t.start];var l=void 0;l=0===t.start?0:n.splice(0,t.start).join(" ").length+1;var a=l+o.length;return{startOffset:l,endOffset:a}}function c(){var e=arguments.length>0&&void 0!==arguments[0]&&arguments[0],t=arguments[1];return e?t.getText().slice(e.getStartOffset(),e.getEndOffset()):t.getText()}function s(e){var t=arguments.length>1&&void 0!==arguments[1]&&arguments[1],n=arguments.length>2&&void 0!==arguments[2]&&arguments[2],o=d.SelectionState.createEmpty(e.getKey()),r={};return t&&(r.anchorOffset=t),r.focusOffset=n?n:e.getLength(),o.merge(r)}function f(e){return!("atomic"===e.getType()||""===e.getText().trim())}Object.defineProperty(t,"__esModule",{value:!0}),t.getWordBoundaryFromChrOffset=o,t.getRangeEnd=r,t.extractPreText=l,t.extractStyledSegment=a,t.convertRangeFromChrToWdLevel=i,t.convertRangeFromWdToChrLevel=u,t.getBlockText=c,t.createBlockSelection=s,t.blockIsProccessible=f;var d=n(165)},327:function(e,t){"use strict";Object.defineProperty(t,"__esModule",{value:!0});t.EditorStyleMap={CODE:{backgroundColor:"rgba(0, 0, 0, 0.05)",fontFamily:'"Inconsolata", "Menlo", "Consolas", monospace',fontSize:16,padding:2}}},328:function(e,t,n){"use strict";function o(e){return e&&e.__esModule?e:{"default":e}}function r(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function l(e,t){if(!e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!t||"object"!=typeof t&&"function"!=typeof t?e:t}function a(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}Object.defineProperty(t,"__esModule",{value:!0}),t["default"]=void 0;var i=function(){function e(e,t){for(var n=0;n<t.length;n++){var o=t[n];o.enumerable=o.enumerable||!1,o.configurable=!0,"value"in o&&(o.writable=!0),Object.defineProperty(e,o.key,o)}}return function(t,n,o){return n&&e(t.prototype,n),o&&e(t,o),t}}(),u=n(1),c=o(u),s=n(165),f=n(320),d=n(321),p=function(e){function t(e){r(this,t);var n=l(this,(t.__proto__||Object.getPrototypeOf(t)).call(this,e));return n.updateParentState=function(t,n){return e.updateParentState(t,n)},n.updateEditorState=function(t){return e.updateEditorState(t)},n.onURLChange=function(e){return n.updateParentState({link:{url:e.target.value,showInput:!0}})},n.onMediaURLChange=function(e){return n.updateParentState({media:{url:e.target.value,type:n.props.parentState.media.type,showInput:!0}})},n.toggleBlockType=function(e){return n._toggleBlockType(e)},n.toggleInlineStyle=function(e){return n._toggleInlineStyle(e)},n.promptForLink=function(e){return n._promptForLink(e)},n.confirmLink=function(e){return n._confirmLink(e)},n.onLinkInputKeyDown=function(e){return n._onInputKeyDown("link",e)},n.removeLink=function(e){return n._removeLink(e)},n.addImage=function(){return n._promptForMedia("image")},n.addVideo=function(){return n._promptForMedia("video")},n.confirmMedia=function(e){return n._confirmMedia(e)},n.onMediaURLInputKeyDown=function(e){return n._onInputKeyDown("media",e)},n.clearEditorContent=function(){return n.props.clearEditorContent()},n}return a(t,e),i(t,[{key:"_toggleBlockType",value:function(e){this.updateEditorState(s.RichUtils.toggleBlockType(this.props.parentState.editorState,e))}},{key:"_toggleInlineStyle",value:function(e){this.updateEditorState(s.RichUtils.toggleInlineStyle(this.props.parentState.editorState,e))}},{key:"_promptForLink",value:function(e){e.preventDefault();var t=this.props.parentState.editorState,n=t.getSelection();n.isCollapsed()||this.updateParentState({link:{showInput:!0,url:""}})}},{key:"_confirmLink",value:function(e){var t=this;e.preventDefault();var n=this.props.parentState,o=n.editorState,r=n.link,l=s.Entity.create("LINK","MUTABLE",{url:r.url});this.updateParentState({editorState:s.RichUtils.toggleLink(o,o.getSelection(),l),link:{showInput:!1,url:""}},function(){return setTimeout(function(){return t.props.editorFocus()},0)})}},{key:"_removeLink",value:function(e){e.preventDefault();var t=this.props.parentState.editorState,n=t.getSelection();n.isCollapsed()||this.updateParentState({editorState:s.RichUtils.toggleLink(t,n,null)})}},{key:"_promptForMedia",value:function(e){this.updateParentState({media:{showInput:!0,url:"",type:e}})}},{key:"_confirmMedia",value:function(e){var t=this;e.preventDefault();var n=this.props.parentState,o=n.editorState,r=n.media,l=s.Entity.create(r.type,"IMMUTABLE",{src:r.url});this.updateParentState({editorState:s.AtomicBlockUtils.insertAtomicBlock(o,l," "),media:{showInput:!1,url:""}},function(){return setTimeout(function(){return t.props.editorFocus()},0)})}},{key:"_onInputKeyDown",value:function(e,t){13===t.which&&("link"===e?this.confirmLink(t):"media"===e&&this.confirmMedia(t))}},{key:"render",value:function(){var e=this.props.parentState,t=e.editorState,n=e.link,o=e.media,r=void 0;this.props.inline&&(r="inline-toolbar");var l=void 0;n.showInput&&(l=c["default"].createElement("div",null,c["default"].createElement("input",{onChange:this.onURLChange,ref:function(e){return e?e.focus():null},type:"text",value:n.url,onKeyDown:this.onLinkInputKeyDown}),c["default"].createElement("button",{onMouseDown:this.confirmLink},"Confirm")));var a=void 0;return o.showInput&&(a=c["default"].createElement("div",null,c["default"].createElement("input",{onChange:this.onMediaURLChange,ref:function(e){return e?e.focus():null},type:"text",value:o.url,onKeyDown:this.onMediaURLInputKeyDown}),c["default"].createElement("button",{onMouseDown:this.confirmMedia},"Confirm"))),c["default"].createElement("div",{className:r,style:this.props.position},c["default"].createElement(f.InlineStyleControls,{className:"RichEditor-fromatting-button-block",editorState:t,onToggle:this.toggleInlineStyle}),c["default"].createElement(f.BlockStyleControls,{className:"RichEditor-fromatting-button-block",editorState:t,onToggle:this.toggleBlockType}),c["default"].createElement("div",{className:"RichEditor-fromatting-button-block"},c["default"].createElement(d.SpecialButton,{mouseDownCallback:this.promptForLink,tooltip:"Link qo'yish"},c["default"].createElement("span",{className:"flaticon-link"})),c["default"].createElement(d.SpecialButton,{mouseDownCallback:this.removeLink,tooltip:"Linkni o'chirish"},c["default"].createElement("span",{className:"flaticon-broken-link"}))),this.props.inline?null:c["default"].createElement("div",{className:"RichEditor-fromatting-button-block"},c["default"].createElement(d.SpecialButton,{mouseDownCallback:this.addImage,tooltip:"Rasm qo'yish"},c["default"].createElement("span",{className:"flaticon-add-picture"})),c["default"].createElement(d.SpecialButton,{mouseDownCallback:this.addVideo,tooltip:"Video qo'yish"},c["default"].createElement("span",{className:"flaticon-video-add-button"}))),c["default"].createElement("div",{className:"RichEditor-fromatting-button-block"},c["default"].createElement(d.SpecialButton,{mouseDownCallback:this.props.transliterate,tooltip:"Transliteratsiya"},c["default"].createElement("span",{className:"flaticon-arrows"})),c["default"].createElement(d.SpecialButton,{mouseDownCallback:null,tooltip:"Imloni tekshirish"},c["default"].createElement("span",{className:"flaticon-edit-text"}))),l,a,c["default"].createElement("div",{className:"pull-right"},c["default"].createElement(d.SpecialButton,{mouseDownCallback:this.clearEditorContent,tooltip:"O'chirish"},c["default"].createElement("span",{className:"flaticon-eraser"}))),this.props.inline?c["default"].createElement("div",{className:"inline-toolbar-triangle"}):null)}}]),t}(c["default"].Component);t["default"]=p},329:function(e,t){"use strict";Object.defineProperty(t,"__esModule",{value:!0});t.getSelectionRange=function(){var e=window.getSelection();return 0===e.rangeCount?null:e.getRangeAt(0)},t.getSelectedBlockElement=function(e){var t=e.startContainer;do{var n=t.getAttribute?t.getAttribute("data-block"):null;if(n)return t;t=t.parentNode}while(null!==t);return null},t.getSelectionCoords=function(e){var t=document.getElementById("editor").getBoundingClientRect(),n=e.getBoundingClientRect(),o=n.right-n.left,r=(n.bottom-n.top,n.left-t.left+o/2-36),l=n.top-t.top+7;return{offsetLeft:r,offsetTop:l}}}});