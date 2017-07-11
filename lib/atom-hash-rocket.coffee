{CompositeDisposable} = require 'atom'

module.exports =
  subscriptions: null

  activate: ->
    @subscriptions = new CompositeDisposable
    @subscriptions.add atom.commands.add 'atom-workspace', 'atom-hash-rocket:insert': => @insert()

  deactivate: ->
    @subscriptions.dispose()

  insert: ->
    console.log 'insert text'
    if editor = atom.workspace.getActiveTextEditor()
      editor.insertText('=>')
