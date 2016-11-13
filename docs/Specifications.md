Specifications
=============================

> this is the project specifications (just for development purposes :-) which can later be turned into documentation materials

Things to do
--------------------
#### What I want to do with the editor?
- to import it in my other projects and use it
- to customize it to my needs
- to provide initial data, and to get the result in the format that I want, to save it to somewhere (e.g. in Markdown)

#### What features the editor should have?
- toolbar with button with actions which formats the selected text or block or editor's entire content
- inline toolbar
- copy and paste with persisting the rich formatting
- redo-undo
- transliteration, translation, spellcheck actions with persisting the editors content formatting
 - don't know, maybe I am wrong, but when you update contentBlocks text property, all inline style information and entities in the block get lost. I think draft-js doesn't handle it. So I am creating the `persistance` functionality to prevent this behaviour.
- media insertion like photo, video by drag-in-drop or in other ways

#### What I want to customize with configuration?
- the editor
- toolbar
- inline toolbar
- transliteration, translation, spellcheck and other actions

#### What I want to extend?
- actions (e.g. creating new actions)

#### How I configure Editor and what I configure?
- with the config parameter which will be a js object which will include initial data, draft-js editors params, export type and etc.

#### How I configure toolbar and what I configure?
- toolbar type like, extended, mini, without media actions and etc.
- special actions like transliteration, media insertion and etc

Project structure
----------------------
> Todo: find out how to structure the project

Maybe:
- configuration
- actions
- toolbar
- editor
- persistance
- components
