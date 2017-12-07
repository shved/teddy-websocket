$ ->
  $input = $('input#message-input')
  $send = $('button#send')
  $send.on('click', ->
    App.test.echo $input.val()
    $input.val('')
  )

  $input.keypress (e) ->
    if e.which == 13
      App.test.echo $input.val()
      $input.val('')
