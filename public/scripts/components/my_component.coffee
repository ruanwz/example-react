require '../firebase-simple-login'
Fluxxor = require 'fluxxor'
React = require 'react'
FluxChildMixin = Fluxxor.FluxChildMixin(React)
StoreWatchMixin = Fluxxor.StoreWatchMixin
d = React.DOM

MyComponent = React.createClass
  mixins: [FluxChildMixin, StoreWatchMixin("TodoStore")]
  getInitialState: ->
    room: null
    status: 'available'
  getStateFromFlux: ->
    flux = @getFlux()
    {todos: flux.store("TodoStore").getState()}
  getMyState: ->
    my_state: null

  render: ->
    (d.div {}, [
      (d.video {id: 'v'},[])
    ])

module.exports = MyComponent
