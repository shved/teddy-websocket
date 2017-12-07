App.test = App.cable.subscriptions.create "TestChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    $('#messages').append("<p>" + data['message'] + "</p>")

  echo: (message) ->
    @perform 'echo', message: message

$ ->
  $input = $('input#message-input')
  $send = $('button#send')
  console.log($input.val())
  $send.on('click', ->
    App.test.echo $input.val()
  )
