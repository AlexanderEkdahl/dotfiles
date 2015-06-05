# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to make opened Markdown files always be soft wrapped:

path = require 'path'

atom.commands.add 'atom-text-editor', 'swap-theme': (event) ->
  tm = atom.themes
  if tm.getActiveThemeNames().indexOf("atom-light-syntax") > 0
    atom.config.set('core.themes', ["atom-dark-syntax", "one-dark-ui"])
  else
    atom.config.set('core.themes', ["atom-light-syntax", "one-light-ui"])
