webpackJsonp([0,2],{0:function(e,t,n){"use strict";function o(e){return e&&e.__esModule?e:{default:e}}var r=n(1),l=o(r),a=n(30),i=o(a),u=n(163),s=o(u),c=function(e){return l.default.createElement("div",{className:"row"},l.default.createElement("div",{className:"col-main"},l.default.createElement(s.default,null)),l.default.createElement("div",{className:"clearfix"}))};i.default.render(l.default.createElement(c,null),document.getElementById("app-root"))},163:function(e,t,n){"use strict";function o(e){return e&&e.__esModule?e:{default:e}}function r(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function l(e,t){if(!e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!t||"object"!=typeof t&&"function"!=typeof t?e:t}function a(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}Object.defineProperty(t,"__esModule",{value:!0});var i=function(){function e(e,t){for(var n=0;n<t.length;n++){var o=t[n];o.enumerable=o.enumerable||!1,o.configurable=!0,"value"in o&&(o.writable=!0),Object.defineProperty(e,o.key,o)}}return function(t,n,o){return n&&e(t.prototype,n),o&&e(t,o),t}}(),u=n(1),s=o(u),c=n(30),g=(o(c),n(164),n(165)),f=n(294),d=n(302),p=n(307),h=(o(p),n(308)),y=(n(309),n(312)),m=n(313),S=n(316),v=o(S),E=n(318),b=n(319),k=o(b),w=n(320),_=function(e){function t(e){r(this,t);var n=l(this,(t.__proto__||Object.getPrototypeOf(t)).call(this,e)),o=new g.CompositeDecorator([{strategy:h.findLinkEntities,component:h.Link}]);return n.state={editorState:g.EditorState.createEmpty(o),showPreview:!1,showMarkdown:!1,showHtml:!1,link:{showInput:!1,url:""},media:{showInput:!1,url:"",type:""},inlineToolbar:{show:!1,position:{top:0,left:0}}},n.togglePreview=function(){return n.setState({showPreview:!n.state.showPreview})},n.focus=function(){var e=document.getElementById("editor-root");e.style.border="1px solid #337AB7",n.refs.editor.focus()},n.blur=function(){var e=document.getElementById("editor-root");e.style.border="1px solid #ddd"},n.onChange=function(e){if(e.getSelection().isCollapsed())n.setState({inlineToolbar:{show:!1}});else{var t=(0,w.getSelectionRange)(),o=(0,w.getSelectionCoords)(t);n.setState({inlineToolbar:{show:!0,position:{top:o.offsetTop,left:o.offsetLeft}}})}n.setState({editorState:e}),setTimeout(n.updateSelection,0)},n.handleKeyCommand=function(e){return n._handleKeyCommand(e)},n.updateStateFromToolbar=function(e,t){return n.setState(e,t)},n.updateSelection=function(){return n._updateSelection()},n.logState=function(){var e=n.state.editorState.getCurrentContent();console.log((0,g.convertToRaw)(e)),console.log(n.state)},n.toggleMarkdown=function(){return n.setState({showMarkdown:!n.state.showMarkdown})},n.toggleHtml=function(){return n.setState({showHtml:!n.state.showHtml})},n.stateToMarkdown=function(){return(0,f.stateToMarkdown)(n.state.editorState.getCurrentContent())},n.stateToHtml=function(){return(0,d.stateToHTML)(n.state.editorState.getCurrentContent())},n.clearEditorContent=function(){return n.setState({editorState:g.EditorState.push(n.state.editorState,g.ContentState.createFromText(""))})},n.transliterate=function(){return n.onChange((0,v.default)(n.state.editorState,m.transliterate))},n}return a(t,e),i(t,[{key:"_updateSelection",value:function(){var e=(0,w.getSelectionRange)(),t=void 0;e&&(t=(0,w.getSelectedBlockElement)(e)),this.setState({selectedBlock:t,selectionRange:e})}},{key:"_handleKeyCommand",value:function(e){var t=this.state.editorState,n=g.RichUtils.handleKeyCommand(t,e);return!!n&&(this.onChange(n),!0)}},{key:"render",value:function(){var e=this.state.editorState,t="RichEditor-editor",n=e.getCurrentContent();return n.hasText()||"unstyled"!==n.getBlockMap().first().getType()&&(t+=" RichEditor-hidePlaceholder"),s.default.createElement("div",{className:"RichEditor-root",id:"editor-root",onBlur:this.blur},s.default.createElement(k.default,{parentState:this.state,updateParentState:this.updateStateFromToolbar,updateEditorState:this.onChange,editorFocus:this.focus,clearEditorContent:this.clearEditorContent,transliterate:this.transliterate}),s.default.createElement("div",{className:t,onClick:this.focus,id:"editor"},s.default.createElement(g.Editor,{blockRendererFn:y.CustomBlockRenderer,blockStyleFn:y.getBlockStyle,customStyleMap:E.EditorStyleMap,blockRenderMap:y.customBlockRenderMap,editorState:e,handleKeyCommand:this.handleKeyCommand,onChange:this.onChange,placeholder:"Matn...",ref:"editor",spellCheck:!1})),s.default.createElement("input",{onClick:this.togglePreview,type:"button",value:"Preview"}),s.default.createElement("input",{onClick:this.toggleMarkdown,type:"button",value:"Markdown"}),s.default.createElement("input",{onClick:this.toggleHtml,type:"button",value:"Html"}),s.default.createElement("br",null),s.default.createElement("hr",null),s.default.createElement("div",null,this.state.showPreview?s.default.createElement(g.Editor,{blockRendererFn:y.CustomBlockRenderer,blockStyleFn:y.getBlockStyle,customStyleMap:E.EditorStyleMap,blockRenderMap:y.customBlockRenderMap,editorState:e,readOnly:!0}):null),this.state.showMarkdown?s.default.createElement("textarea",{style:{width:"500px",height:"200px"},defaultValue:this.stateToMarkdown()}):null,this.state.showHtml?s.default.createElement("textarea",{style:{width:"500px",height:"200px"},defaultValue:this.stateToHtml()}):null)}}]),t}(s.default.Component);t.default=_},307:function(e,t,n){"use strict";function o(e){return e&&e.__esModule?e:{default:e}}function r(e,t){var n={};for(var o in e)t.indexOf(o)>=0||Object.prototype.hasOwnProperty.call(e,o)&&(n[o]=e[o]);return n}function l(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function a(e,t){if(!e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!t||"object"!=typeof t&&"function"!=typeof t?e:t}function i(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var u=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var o in n)Object.prototype.hasOwnProperty.call(n,o)&&(e[o]=n[o])}return e},s=function(){function e(e,t){for(var n=0;n<t.length;n++){var o=t[n];o.enumerable=o.enumerable||!1,o.configurable=!0,"value"in o&&(o.writable=!0),Object.defineProperty(e,o.key,o)}}return function(t,n,o){return n&&e(t.prototype,n),o&&e(t,o),t}}(),c=n(1),g=o(c),f=function(e){function t(e){l(this,t);var n=a(this,(t.__proto__||Object.getPrototypeOf(t)).call(this,e));return n.state={affix:!1},n.handleScroll=function(){return n._handleScroll()},n}return i(t,e),s(t,[{key:"_handleScroll",value:function(){var e=this.state.affix,t=this.props.offset,n=document.documentElement.scrollTop||document.body.scrollTop;!e&&n>=t&&this.setState({affix:!0}),e&&n<t&&this.setState({affix:!1})}},{key:"componentDidMount",value:function(){window.addEventListener("scroll",this.handleScroll)}},{key:"componentWillUnmount",value:function(){window.removeEventListener("scroll",this.handleScroll)}},{key:"render",value:function(){var e=this.state.affix?"affix":"",t=this.props,n=t.className,o=(t.offset,r(t,["className","offset"]));return g.default.createElement("div",u({},o,{className:n+" "+e}),this.props.children)}}]),t}(g.default.Component);f.propTypes={offset:g.default.PropTypes.number},t.default=f},308:function(e,t,n){"use strict";function o(e){return e&&e.__esModule?e:{default:e}}function r(e,t){e.findEntityRanges(function(e){var t=e.getEntity();return null!==t&&"LINK"===i.Entity.get(t).getType()},t)}Object.defineProperty(t,"__esModule",{value:!0}),t.Media=t.Link=void 0,t.findLinkEntities=r;var l=n(1),a=o(l),i=n(165),u=(t.Link=function(e){var t=i.Entity.get(e.entityKey).getData(),n=t.url;return a.default.createElement("a",{href:n,style:{textDecoration:"underline",color:"blue"}},e.children)},function(e){return a.default.createElement("img",{src:e.src})}),s=function(e){return a.default.createElement("video",{controls:!0,src:e.src,style:{width:"100%",padding:"20px 50px"}})};t.Media=function(e){var t=i.Entity.get(e.block.getEntityAt(0)),n=t.getData(),o=n.src,r=t.getType(),l=null;return"image"===r?l=a.default.createElement(u,{src:o}):"video"===r&&(l=a.default.createElement(s,{src:o})),l}},309:function(e,t,n){"use strict";function o(e){return e&&e.__esModule?e:{default:e}}Object.defineProperty(t,"__esModule",{value:!0}),t.InlineStyleControls=t.BlockStyleControls=void 0;var r=n(1),l=o(r),a=n(310),i=n(311);t.BlockStyleControls=function(e){var t=e.editorState,n=t.getSelection(),o=t.getCurrentContent().getBlockForKey(n.getStartKey()).getType();return l.default.createElement("div",{className:"RichEditor-controls "+e.className,style:e.extraStyle},i.BLOCK_TYPES.map(function(t,n){return l.default.createElement(a.StyleButton,{key:t.label,active:t.style===o,onToggle:e.onToggle,style:t.style,tooltip:t.tooltip},l.default.createElement(t.label,{key:n}))}),l.default.createElement("select",{onChange:e.onToggle,value:o},i.HEADER_TYPES.map(function(e,t){return l.default.createElement("option",{key:t,value:e.style,className:e.style},e.label)})))},t.InlineStyleControls=function(e){var t=e.editorState.getCurrentInlineStyle();return l.default.createElement("div",{className:"RichEditor-controls "+e.className,style:e.extraStyle},i.INLINE_STYLES.map(function(n,o){return l.default.createElement(a.StyleButton,{key:n.label,active:t.has(n.style),onToggle:e.onToggle,style:n.style,tooltip:n.tooltip},l.default.createElement(n.label,{key:o}))}))}},310:function(e,t,n){"use strict";function o(e){return e&&e.__esModule?e:{default:e}}function r(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function l(e,t){if(!e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!t||"object"!=typeof t&&"function"!=typeof t?e:t}function a(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}Object.defineProperty(t,"__esModule",{value:!0}),t.SpecialButton=t.StyleButton=void 0;var i=function(){function e(e,t){for(var n=0;n<t.length;n++){var o=t[n];o.enumerable=o.enumerable||!1,o.configurable=!0,"value"in o&&(o.writable=!0),Object.defineProperty(e,o.key,o)}}return function(t,n,o){return n&&e(t.prototype,n),o&&e(t,o),t}}(),u=n(1),s=o(u);t.StyleButton=function(e){function t(){r(this,t);var e=l(this,(t.__proto__||Object.getPrototypeOf(t)).call(this));return e.onToggle=function(t){t.preventDefault(),e.props.onToggle(e.props.style)},e.state={showTooltip:!1},e.toggleTooltip=function(t){return e.setState({showTooltip:!e.state.showTooltip})},e}return a(t,e),i(t,[{key:"render",value:function(){var e="RichEditor-styleButton";this.props.active&&(e+=" RichEditor-activeButton");var t=100*Math.log10(this.props.tooltip.length);return s.default.createElement("span",{className:e,onMouseDown:this.onToggle,onMouseEnter:this.toggleTooltip,onMouseLeave:this.toggleTooltip},this.props.children,this.state.showTooltip?s.default.createElement("span",{className:"tooltiptext",style:{width:t}},this.props.tooltip):null)}}]),t}(s.default.Component),t.SpecialButton=function(e){function t(){r(this,t);var e=l(this,(t.__proto__||Object.getPrototypeOf(t)).call(this));return e.state={showTooltip:!1},e.toggleTooltip=function(t){return e.setState({showTooltip:!e.state.showTooltip})},e}return a(t,e),i(t,[{key:"render",value:function(){var e=100*Math.log10(this.props.tooltip.length);return s.default.createElement("span",{className:"RichEditor-styleButton",onMouseDown:this.props.mouseDownCallback,onMouseEnter:this.toggleTooltip,onMouseLeave:this.toggleTooltip,style:this.props.extraStyle},this.props.children,this.state.showTooltip?s.default.createElement("span",{className:"tooltiptext",style:{width:e}},this.props.tooltip):null)}}]),t}(s.default.Component)},311:function(e,t,n){"use strict";function o(e){return e&&e.__esModule?e:{default:e}}Object.defineProperty(t,"__esModule",{value:!0}),t.HEADER_TYPES=t.BLOCK_TYPES=t.INLINE_STYLES=void 0;var r=n(1),l=o(r);t.INLINE_STYLES=[{label:function(){return l.default.createElement("span",{className:"flaticon-bold"})},style:"BOLD",tooltip:"Qalin"},{label:function(){return l.default.createElement("span",{className:"flaticon-italic"})},style:"ITALIC",tooltip:"Qiya"},{label:function(){return l.default.createElement("span",{className:"flaticon-underline"})},style:"UNDERLINE",tooltip:"Tagiga chizilgan"},{label:function(){return l.default.createElement("span",{className:"flaticon-text-option"})},style:"CODE",tooltip:"Monospeys"}],t.BLOCK_TYPES=[{label:function(){return l.default.createElement("span",{className:"flaticon-inverted-commas"})},style:"blockquote",tooltip:"Sitata"},{label:function(){return l.default.createElement("span",{className:"flaticon-bullets"})},style:"unordered-list-item",tooltip:"Raqamsiz ro`yxat"},{label:function(){return l.default.createElement("span",{className:"flaticon-text-align"})},style:"ordered-list-item",tooltip:"Raqamli ro`yxat"},{label:function(){return l.default.createElement("span",{className:"flaticon-braces"})},style:"code-block",tooltip:"Kod"}],t.HEADER_TYPES=[{label:"Heading",style:"header-one"},{label:"Heading",style:"header-two"},{label:"Heading",style:"header-three"},{label:"Heading",style:"header-four"},{label:"Heading",style:"header-five"},{label:"Heading",style:"header-six"}]},312:function(e,t,n){"use strict";function o(e){return e&&e.__esModule?e:{default:e}}function r(e){return"atomic"===e.getType()?{component:g.Media,editable:!1}:null}function l(e){switch(e.getType()){case"blockquote":return"RichEditor-blockquote";case"code-block":return"RichEditor-code-block";default:return null}}Object.defineProperty(t,"__esModule",{value:!0}),t.customBlockRenderMap=t.CustomCodeBlock=void 0,t.CustomBlockRenderer=r,t.getBlockStyle=l;var a=n(1),i=o(a),u=n(165),s=o(u),c=n(164),g=n(308),f=t.CustomCodeBlock=function(e){return i.default.createElement("code",{style:{display:"block",padding:"20px"}},e.children)},d=(0,c.Map)({"code-block":{element:"div",wrapper:i.default.createElement(f,null)}});t.customBlockRenderMap=s.default.DefaultDraftBlockRenderMap.merge(d)},313:function(e,t,n){"use strict";function o(e){return e&&e.__esModule?e:{default:e}}function r(e){var t=(0,l.whichChar)(e);return(0,a.default)(t,e)}Object.defineProperty(t,"__esModule",{value:!0}),t.transliterate=r;var l=n(314),a=o(l)},314:function(e,t,n){"use strict";function o(e){return e&&e.__esModule?e:{default:e}}function r(e){for(var t=a.default.ltn.alphabet.replacee,n=e.length,o=0,r=null,l=0;l<n;l++)t.indexOf(e[l])!==-1&&o++;if(0==o)r="crl";else{var i=o/n;r=i>.5?"ltn":"crl"}return r}Object.defineProperty(t,"__esModule",{value:!0}),t.whichChar=r;var l=n(315),a=o(l);String.prototype.replaceAll=function(e,t){var n=this;return n.replace(new RegExp(e,"g"),t)};var i=function(e,t){return e.replacee.reduce(function(t,n,o){return t.replace(n,e.replacement[o].source)},t)},u=function(e,t){return e.replacee.reduce(function(t,n,o){return t.replace(n,e.replacement[o])},t)},s=function(e,t){return e.replacee.reduce(function(t,n,o){return t=t.replaceAll(n,e.replacement[o]),t.replaceAll(n.toUpperCase(),e.replacement[o].toUpperCase())},t)};t.default=function(e,t){var n=a.default[e].exceptionalWords,o=a.default[e].phonemRules,r=a.default[e].alphabet,l=i(n,t);return l=u(o,l),s(r,l)}},315:function(e,t){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var n=[[/([аоуеёияюўАОУЕЁИЯЮЎ])Е/g,/([аоуеёияюўАОУЕЁИЯЮЎ])Ц/g,/(^|[\s"«])Э/g,/(^|[\s"«])Е/g,/(^|[\s"«])Ш/g,/(\w)Ш/g,/Ь($|\s)/g,/(^|[\s"«])Я/g,/(^|[\s"«])Ю/g,/(^|[\s"«])Ё/g,/(^|[\s"«])Ч/g,/«|»/g,/([аоуеёияюўАОУЕЁИЯЮЎ])е/g,/([аоуеёияюўАОУЕЁИЯЮЎ])ц/g,/(^|[\s"«])э/g,/(^|[\s"«])е/g,/ь($|[\s"»])/g,/(^|[\s"«])я/g,/(^|[\s"«])ю/g,/(^|[\s"«])ё/g,/(^|[\s"«])ч/g],["$1YE","$1TS","$1E","$1Ye","$1Sh","$1SH","$1","$1Ya","$1Yu","$1Yo","$1Ch",'"',"$1ye","$1ts","$1e","$1ye","$1","$1ya","$1yu","$1yo","$1ch"]],o=[[/(^|[\s"])ye/g,/([aouei`'‘’])ye/g,/(^|[\s"«])e/g,/yo[`'‘’]/g,/yo/g,/yu/g,/ya/g,/sh/g,/ch/g,/g[`'‘’]/g,/o[`'‘’]/g,/([aouei`'‘’])ts/g,/(^|\s+)"/g,/"($|[\s,.?!-]+)/g,/(^|[\s"])Ye/g,/(^|[\s"«])E/g,/Yo[`'‘’]/g,/Yo/g,/Yu/g,/Ya/g,/Sh/g,/Ch/g,/G[`'‘]/g,/O[`'‘’]/g,/(^|[\s"«])YE/g,/([AOUEI`'‘’])YE/g,/YO[`'‘’]/g,/YO/g,/YU/g,/YA/g,/SH/g,/CH/g,/([AOUEI`'‘’])TS/g],["$1е","$1е","$1э","йў","ё","ю","я","ш","ч","ғ","ў","$1ц","$1«","»$1","$1Е","$1Э","Йў","Ё","Ю","Я","Ш","Ч","Ғ","Ў","$1Е","$1Е","ЙЎ","Ё","Ю","Я","Ш","Ч","$1Ц"]],r=/((?:https?:\/{2})?(?:\w+\.)?[\w0-9_-]+\.[\w]+\/?(?:\/?[\w0-9$#&_.;%-]\/?)*)/g,l=["а","б","в","г","д","е","ё","ж","з","и","й","к","л","м","н","о","п","р","с","т","у","ф","х","ц","ч","ш","ы","ъ","ь","ъ","ь","э","ю","я","ў","қ","ғ","ҳ"],a=["a","b","v","g","d","e","yo","j","z","i","y","k","l","m","n","o","p","r","s","t","u","f","x","s","ch","sh","i","’","’","'","'","e","yu","ya","o‘","q","g‘","h"],i=[/Октябрь/g,/Сентябрь/g,/Ноябрь/g,/Декабрь/g,/Январь/g,/Февраль/g,/Апрель/g,/Июнь/g,/Июль/g,/Бюджет/g,/Режиссёр/g,/Исҳоқ/g,/Нуқтаий/g,/Цезий/g,/Цейтнот/g,/Целлофан/g,/Целлюлоза/g,/Цельсий/g,/Цемент/g,/Цензор/g,/Цензура/g,/Центнер/g,/Цех/g,/Цеце/g,/Цивилизация/g,/Цикл/g,/Циклон/g,/Циклоп/g,/Цилиндр/g,/Цилиндрик/g,/Цилиндрсимон/g,/Цирк/g,/Циркуль/g,/Цистерна/g,/Цитрус/g,/Нью-Йорк/g,/Компьютер/g,/Ансамбль/g,/Аппелляция/g,/Апельсин/g,/Бандероль/g,/Бильярд/g,/Бульдозер/g,/Франция/g,/Экспорт/g,/ОКТЯБРЬ/g,/СЕНТЯБРЬ/g,/НОЯБРЬ/g,/ДЕКАБРЬ/g,/ЯНВАРЬ/g,/ФЕВРАЛЬ/g,/АПРЕЛЬ/g,/ИЮНЬ/g,/ИЮЛЬ/g,/БЮДЖЕТ/g,/РЕЖИССЁР/g,/ИСҲОҚ/g,/НУҚТАИЙ/g,/ЦЕЗИЙ/g,/ЦЕЙТНОТ/g,/ЦЕЛЛОФАН/g,/ЦЕЛЛЮЛОЗА/g,/ЦЕЛЬСИЙ/g,/ЦЕМЕНТ/g,/ЦЕНЗОР/g,/ЦЕНЗУРА/g,/ЦЕНТНЕР/g,/ЦЕХ/g,/ЦЕЦЕ/g,/ЦИВИЛИЗАЦИЯ/g,/ЦИКЛ/g,/ЦИКЛОН/g,/ЦИКЛОП/g,/ЦИЛИНДР/g,/ЦИЛИНДРИК/g,/ЦИЛИНДРСИМОН/g,/ЦИРК/g,/ЦИРКУЛЬ/g,/ЦИСТЕРНА/g,/ЦИТРУС/g,/НЬЮ-ЙОРК/g,/КОМПЬЮТЕР/g,/АНСАМБЛЬ/g,/АППЕЛЛЯЦИЯ/g,/АПЕЛЬСИН/g,/БАНДЕРОЛЬ/g,/БИЛЬЯРД/g,/БУЛЬДОЗЕР/g,/ФРАНЦИЯ/g,/ЭКСПОРТ/g,/октябрь/gi,/сентябрь/gi,/ноябрь/gi,/декабрь/gi,/январь/gi,/февраль/gi,/апрель/gi,/июнь/gi,/июль/gi,/бюджет/gi,/режиссёр/gi,/исҳоқ/gi,/нуқтаий/gi,/цезий/gi,/цейтнот/gi,/целлофан/gi,/целлюлоза/gi,/цельсий/gi,/цемент/gi,/цензор/gi,/цензура/gi,/центнер/gi,/цех/gi,/цеце/gi,/цивилизация/gi,/цикл/gi,/циклон/gi,/циклоп/gi,/цилиндр/gi,/цилиндрик/gi,/цилиндрсимон/gi,/цирк/gi,/циркуль/gi,/цистерна/gi,/цитрус/gi,/нью-йорк/gi,/компьютер/gi,/ансамбль/gi,/аппелляция/gi,/апельсин/gi,/бандероль/gi,/бильярд/gi,/бульдозер/gi,/франция/gi,/экспорт/gi],u=[/Oktabr/g,/Sentabr/g,/Noyabr/g,/Dekabr/g,/Yanvar/g,/Fevral/g,/Aprel/g,/Iyun/g,/Iyul/g,/Budjet/g,/Rejissor/g,/Is'hoq/g,/Nuqtayi/g,/Seziy/g,/Seytnot/g,/Sellofan/g,/Sellyuloza/g,/Selsiy/g,/Sement/g,/Senzor/g,/Senzura/g,/Sentner/g,/Sex/g,/Setse/g,/Sivilizatsiya/g,/Sikl/g,/Siklon/g,/Siklop/g,/Silindr/g,/Silindrik/g,/Silindrsimon/g,/Sirk/g,/Sirkul/g,/Sisterna/g,/Sitrus/g,/Nyu-York/g,/Kompyuter/g,/Ansambl/g,/Apellatsiya/g,/Apelsin/g,/Banderol/g,/Bilyard/g,/Buldozer/g,/Fransiya/g,/Eksport/g,/OKTABR/g,/SENTABR/g,/NOYABR/g,/DEKABR/g,/YANVAR/g,/FEVRAL/g,/APREL/g,/IYUN/g,/IYUL/g,/BUDJET/g,/REJISSOR/g,/IS'HOQ/g,/NUQTAYI/g,/SEZIY/g,/SEYTNOT/g,/SELLOFAN/g,/SELLYULOZA/g,/SELSIY/g,/SEMENT/g,/SENZOR/g,/SENZURA/g,/SENTNER/g,/SEX/g,/SETSE/g,/SIVILIZATSIYA/g,/SIKL/g,/SIKLON/g,/SIKLOP/g,/SILINDR/g,/SILINDRIK/g,/SILINDRSIMON/g,/SIRK/g,/SIRKUL/g,/SISTERNA/g,/SITRUS/g,/NYU-YORK/g,/KOMPYUTER/g,/ANSAMBL/g,/APELLATSIYA/g,/APELSIN/g,/BANDEROL/g,/BILYARD/g,/BULDOZER/g,/FRANSIYA/g,/EKSPORT/g,/oktabr/gi,/sentabr/gi,/noyabr/gi,/dekabr/gi,/yanvar/gi,/fevral/gi,/aprel/gi,/iyun/gi,/iyul/gi,/budjet/gi,/rejissor/gi,/is'hoq/gi,/nuqtayi/gi,/seziy/gi,/seytnot/gi,/sellofan/gi,/sellyuloza/gi,/selsiy/gi,/sement/gi,/senzor/gi,/senzura/gi,/sentner/gi,/sex/gi,/setse/gi,/sivilizatsiya/gi,/sikl/gi,/siklon/gi,/siklop/gi,/silindr/gi,/silindrik/gi,/silindrsimon/gi,/sirk/gi,/sirkul/gi,/sisterna/gi,/sitrus/gi,/nyu-york/gi,/kompyuter/gi,/ansambl/g,/apellatsiya/gi,/apelsin/gi,/banderol/g,/bilyard/g,/buldozer/gi,/fransiya/g,/eksport/gi];t.default={crl:{exceptionalWords:{replacee:i,replacement:u},phonemRules:{replacee:n[0],replacement:n[1]},alphabet:{replacee:l,replacement:a}},ltn:{exceptionalWords:{replacee:u,replacement:i},phonemRules:{replacee:o[0],replacement:o[1]},alphabet:{replacee:a,replacement:l}},urlPattern:r}},316:function(e,t,n){"use strict";function o(e){if(e&&e.__esModule)return e;var t={};if(null!=e)for(var n in e)Object.prototype.hasOwnProperty.call(e,n)&&(t[n]=e[n]);return t.default=e,t}function r(e){return e.inlineStyleRanges.map(function(t){return h.convertRangeFromChrToWdLevel(t,e.text)})}function l(e){}function a(e,t,n){return n.reduce(function(e,n,o){var r=h.convertRangeFromWdToChrLevel(t,n),l=h.createBlockSelection(t,r.startOffset,r.endOffset);return d.Modifier.applyInlineStyle(e,l,n.style)},e)}function i(e,t){}function u(e,t,n){var o=h.createBlockSelection(n);return d.Modifier.replaceText(e,o,t(n.getText()))}function s(e){return function(t,n){var o=t.getBlockForKey(n.key),l=h.blockIsProccessible(o),i=n.inlineStyleRanges.length>0,s=void 0;return l?(i&&(s=r(n)),t=u(t,e,o),i&&(t=a(t,o,s)),t):t}}function c(e,t,n){var o=e.getBlockForKey(n.getAnchorKey()),r=t(h.getBlockText(n,o));return d.Modifier.replaceText(e,n,r)}function g(e,t){var n=(0,d.convertToRaw)(e).blocks,o=s(t);return n.reduce(function(e,t){return o(e,t)},e)}function f(e,t){var n=d.EditorState.push(e,t);return d.EditorState.moveSelectionToEnd(n)}Object.defineProperty(t,"__esModule",{value:!0}),t.persistStyles=r,t.persistEntities=l,t.reApplyPersistedStyles=a,t.reApplyPersistedEntities=i,t.replaceBlockText=u,t.generateContentBlockProccessor=s,t.proccessSelected=c,t.proccessWholeContent=g;var d=n(165),p=n(317),h=o(p);t.default=function(e,t){var n=e.getSelection(),o=e.getCurrentContent(),r=void 0;return r=n.isCollapsed()?g(o,t):c(o,t,n),f(e,r)}},317:function(e,t,n){"use strict";function o(e,t){var n=arguments.length>2&&void 0!==arguments[2]&&arguments[2];if(0===e)return e;var o=t.charAt(e);if(n){if(o&&" "==o)return++e;for(;e>-1;){if(o=t.charAt(e),o&&" "==o)return++e;--e}return 0}if(o&&" "==o)return e;for(;e<t.length;){if(o=t.charAt(e),o&&" "==o)return e;++e}return e}function r(e){return e.length+e.offset-1}function l(e,t){return e>0&&t.substring(0,e)}function a(e,t,n){return e.substring(t,n)}function i(e,t){var n=r(e),i=o(e.offset,t,!0),u=o(n,t),s=l(i,t),c=a(t,i,u);return c=c.trim(),c=c.split(" "),{start:s?s.split(" ").length-1:0,length:c.length,style:e.style}}function u(e,t){var n=e.getText().split(" "),o=n[t.start];if(t.length>1)for(var r=t.length-1;r>0;--r)o+=" "+n[r+t.start];var l=void 0;l=0===t.start?0:n.splice(0,t.start).join(" ").length+1;var a=l+o.length;return{startOffset:l,endOffset:a}}function s(){var e=arguments.length>0&&void 0!==arguments[0]&&arguments[0],t=arguments[1];return e?t.getText().slice(e.getStartOffset(),e.getEndOffset()):t.getText()}function c(e){var t=arguments.length>1&&void 0!==arguments[1]&&arguments[1],n=arguments.length>2&&void 0!==arguments[2]&&arguments[2],o=f.SelectionState.createEmpty(e.getKey()),r={};return t&&(r.anchorOffset=t),r.focusOffset=n?n:e.getLength(),o.merge(r)}function g(e){return!(""===e.getText().trim()||"atomic"===e.getType())}Object.defineProperty(t,"__esModule",{value:!0}),t.getWordBoundaryFromChrOffset=o,t.getRangeEnd=r,t.extractPreText=l,t.extractStyledSegment=a,t.convertRangeFromChrToWdLevel=i,t.convertRangeFromWdToChrLevel=u,t.getBlockText=s,t.createBlockSelection=c,t.blockIsProccessible=g;var f=n(165)},318:function(e,t){"use strict";Object.defineProperty(t,"__esModule",{value:!0});t.EditorStyleMap={CODE:{backgroundColor:"rgba(0, 0, 0, 0.05)",fontFamily:'"Inconsolata", "Menlo", "Consolas", monospace',fontSize:16,padding:2}}},319:function(e,t,n){"use strict";function o(e){return e&&e.__esModule?e:{default:e}}function r(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function l(e,t){if(!e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!t||"object"!=typeof t&&"function"!=typeof t?e:t}function a(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var i=function(){function e(e,t){for(var n=0;n<t.length;n++){var o=t[n];o.enumerable=o.enumerable||!1,o.configurable=!0,"value"in o&&(o.writable=!0),Object.defineProperty(e,o.key,o)}}return function(t,n,o){return n&&e(t.prototype,n),o&&e(t,o),t}}(),u=n(1),s=o(u),c=n(165),g=n(309),f=n(310),d=function(e){function t(e){r(this,t);var n=l(this,(t.__proto__||Object.getPrototypeOf(t)).call(this,e));return n.updateParentState=function(t,n){return e.updateParentState(t,n)},n.updateEditorState=function(t){return e.updateEditorState(t)},n.onURLChange=function(e){return n.updateParentState({link:{url:e.target.value,showInput:!0}})},n.onMediaURLChange=function(e){return n.updateParentState({media:{url:e.target.value,type:n.props.parentState.media.type,showInput:!0}})},n.toggleBlockType=function(e){return n._toggleBlockType(e)},n.toggleInlineStyle=function(e){return n._toggleInlineStyle(e)},n.promptForLink=function(e){return n._promptForLink(e)},n.confirmLink=function(e){return n._confirmLink(e)},n.onLinkInputKeyDown=function(e){return n._onInputKeyDown("link",e)},n.removeLink=function(e){return n._removeLink(e)},n.addImage=function(){return n._promptForMedia("image")},n.addVideo=function(){return n._promptForMedia("video")},n.confirmMedia=function(e){return n._confirmMedia(e)},n.onMediaURLInputKeyDown=function(e){return n._onInputKeyDown("media",e)},n.clearEditorContent=function(){return n.props.clearEditorContent()},n}return a(t,e),i(t,[{key:"_toggleBlockType",value:function(e){this.updateEditorState(c.RichUtils.toggleBlockType(this.props.parentState.editorState,e))}},{key:"_toggleInlineStyle",value:function(e){this.updateEditorState(c.RichUtils.toggleInlineStyle(this.props.parentState.editorState,e))}},{key:"_promptForLink",value:function(e){e.preventDefault();var t=this.props.parentState.editorState,n=t.getSelection();n.isCollapsed()||this.updateParentState({link:{showInput:!0,url:""}})}},{key:"_confirmLink",value:function(e){var t=this;e.preventDefault();var n=this.props.parentState,o=n.editorState,r=n.link,l=c.Entity.create("LINK","MUTABLE",{url:r.url});this.updateParentState({editorState:c.RichUtils.toggleLink(o,o.getSelection(),l),link:{showInput:!1,url:""}},function(){return setTimeout(function(){return t.props.editorFocus()},0)})}},{key:"_removeLink",value:function(e){e.preventDefault();var t=this.props.parentState.editorState,n=t.getSelection();n.isCollapsed()||this.updateParentState({editorState:c.RichUtils.toggleLink(t,n,null)})}},{key:"_promptForMedia",value:function(e){this.updateParentState({media:{showInput:!0,url:"",type:e}})}},{key:"_confirmMedia",value:function(e){var t=this;e.preventDefault();var n=this.props.parentState,o=n.editorState,r=n.media,l=c.Entity.create(r.type,"IMMUTABLE",{src:r.url});this.updateParentState({editorState:c.AtomicBlockUtils.insertAtomicBlock(o,l," "),media:{showInput:!1,url:""}},function(){return setTimeout(function(){return t.props.editorFocus()},0)})}},{key:"_onInputKeyDown",value:function(e,t){13===t.which&&("link"===e?this.confirmLink(t):"media"===e&&this.confirmMedia(t))}},{key:"render",value:function(){var e=this.props.parentState,t=e.editorState,n=e.link,o=e.media,r=void 0;this.props.inline&&(r="inline-toolbar");var l=void 0;n.showInput&&(l=s.default.createElement("div",null,s.default.createElement("input",{onChange:this.onURLChange,ref:function(e){return e?e.focus():null},type:"text",value:n.url,onKeyDown:this.onLinkInputKeyDown}),s.default.createElement("button",{onMouseDown:this.confirmLink},"Confirm")));var a=void 0;return o.showInput&&(a=s.default.createElement("div",null,s.default.createElement("input",{onChange:this.onMediaURLChange,ref:function(e){return e?e.focus():null},type:"text",value:o.url,onKeyDown:this.onMediaURLInputKeyDown}),s.default.createElement("button",{onMouseDown:this.confirmMedia},"Confirm"))),s.default.createElement("div",{className:r,style:this.props.position},s.default.createElement(g.InlineStyleControls,{className:"RichEditor-fromatting-button-block",editorState:t,onToggle:this.toggleInlineStyle}),s.default.createElement(g.BlockStyleControls,{className:"RichEditor-fromatting-button-block",editorState:t,onToggle:this.toggleBlockType}),s.default.createElement("div",{className:"RichEditor-fromatting-button-block"},s.default.createElement(f.SpecialButton,{mouseDownCallback:this.promptForLink,tooltip:"Link qo'yish"},s.default.createElement("span",{className:"flaticon-link"})),s.default.createElement(f.SpecialButton,{mouseDownCallback:this.removeLink,tooltip:"Linkni o'chirish"},s.default.createElement("span",{className:"flaticon-broken-link"}))),this.props.inline?null:s.default.createElement("div",{className:"RichEditor-fromatting-button-block"},s.default.createElement(f.SpecialButton,{mouseDownCallback:this.addImage,tooltip:"Rasm qo'yish"},s.default.createElement("span",{className:"flaticon-add-picture"})),s.default.createElement(f.SpecialButton,{mouseDownCallback:this.addVideo,tooltip:"Video qo'yish"},s.default.createElement("span",{className:"flaticon-video-add-button"}))),s.default.createElement("div",{className:"RichEditor-fromatting-button-block"},s.default.createElement(f.SpecialButton,{mouseDownCallback:this.props.transliterate,tooltip:"Transliteratsiya"},s.default.createElement("span",{className:"flaticon-arrows"})),s.default.createElement(f.SpecialButton,{mouseDownCallback:null,tooltip:"Imloni tekshirish"},s.default.createElement("span",{className:"flaticon-edit-text"}))),l,a,s.default.createElement("div",{className:"pull-right"},s.default.createElement(f.SpecialButton,{mouseDownCallback:this.clearEditorContent,tooltip:"O'chirish"},s.default.createElement("span",{className:"flaticon-eraser"}))),this.props.inline?s.default.createElement("div",{className:"inline-toolbar-triangle"}):null)}}]),t}(s.default.Component);t.default=d},320:function(e,t){"use strict";Object.defineProperty(t,"__esModule",{value:!0});t.getSelectionRange=function(){var e=window.getSelection();return 0===e.rangeCount?null:e.getRangeAt(0)},t.getSelectedBlockElement=function(e){var t=e.startContainer;do{var n=t.getAttribute?t.getAttribute("data-block"):null;if(n)return t;t=t.parentNode}while(null!==t);return null},t.getSelectionCoords=function(e){var t=document.getElementById("editor").getBoundingClientRect(),n=e.getBoundingClientRect(),o=n.right-n.left,r=(n.bottom-n.top,n.left-t.left+o/2-36),l=n.top-t.top+7;return{offsetLeft:r,offsetTop:l}}}});