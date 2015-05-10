# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to make opened Markdown files always be soft wrapped:

path = require 'path'

atom.workspaceView.eachEditorView (editorView) ->
  editor = editorView.getEditor()
  if path.extname(editor.getPath()) is '.md'
    editor.setSoftWrap(true)

# Switches between Atom Light and Atm Dark themes
atom.workspaceView.command 'swap-theme', ->
  tm = atom.themes
  if tm.getActiveNames().indexOf("atom-light-syntax") > 0
    tm.setEnabledThemes(["atom-dark-syntax", "one-dark-ui"])
  else
    tm.setEnabledThemes(["atom-light-syntax", "one-light-ui"])
