module.exports =
class OpencvPackageView
  constructor: (serializedState) ->
    # Create root element
    @element = document.createElement('div')
    @element.classList.add('opencv-package')

    # Create message element
    message = document.createElement('div')
    message.textContent = "The MyPackage package is Alive! It's ALIVE!"
    message.classList.add('message')
    @element.appendChild(message)

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @element.remove()

  setContent: (content) ->
    @element.firstChild.textContent = content

  getElement: ->
    @element
