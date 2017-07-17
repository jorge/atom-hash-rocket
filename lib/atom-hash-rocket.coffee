{CompositeDisposable} = require 'atom'

module.exports =
  subscriptions: null

  activate: ->
    @subscriptions = new CompositeDisposable
    @subscriptions.add atom.commands.add 'atom-workspace', 'atom-hash-rocket:insertHashRocket': => @insertHashRocket()

  deactivate: ->
    @subscriptions.dispose()

  insertHashRocket: ->
    console.log 'insert text'
    if editor = atom.workspace.getActiveTextEditor()
      editor.insertText(' => ')
