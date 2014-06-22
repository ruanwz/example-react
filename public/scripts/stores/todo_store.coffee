Fluxxor = require 'fluxxor'
TodoStore = Fluxxor.createStore
  actions:
    "ADD_TODO": "onAddTodo"
  initialize: ->
    @todos = []
  onAddTodo: (payload)->
    @todos.push
      text: payload.text
      complete: false
  getState: ->
    todos: @todos
module.exports = TodoStore
