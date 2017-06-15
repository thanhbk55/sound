App.room = App.cable.subscriptions.create "SoundChannel",

  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    msg = new SpeechSynthesisUtterance(data['message'])
    msg.lang = "ja-JP";
    window.speechSynthesis.speak(msg);
    # Called when there's incoming data on the websocket for this channel

  speak: ->
    @perform 'speak'
