jest.dontMock '../scripts/components/my_component.coffee'
jest.dontMock '../scripts/stores/todo_store.coffee'
#jest.dontMock '../scripts/firebase-simple-login'
jest.dontMock 'fluxxor'
jest.dontMock 'util'
jest.dontMock 'events'
React = require('react/addons')
TestUtils = React.addons.TestUtils
Fluxxor = require 'fluxxor'
FluxMixin = Fluxxor.FluxMixin(React)
MyComponent = require '../scripts/components/my_component.coffee'
TodoStore = require '../scripts/stores/todo_store.coffee'

TestApp = React.createClass
  mixins: [FluxMixin]
  render: ->
    (MyComponent {ref: 'talkbox'},[])

actions = {}

stores = {
  TodoStore: new TodoStore()
}

flux = new Fluxxor.Flux(stores, actions)

describe 'TalkBox', ->
  beforeEach ->
    @test_app = TestApp {flux: flux}
    TestUtils.renderIntoDocument @test_app
    @talkbox = @test_app.refs.talkbox
  it 'has a video element', ->
    video = TestUtils.findRenderedDOMComponentWithTag(@talkbox, 'video')
    expect(video.getDOMNode().id).toEqual 'v'

