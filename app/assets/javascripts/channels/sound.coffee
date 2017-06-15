App.room = App.cable.subscriptions.create "SoundChannel",

  connected: ->
    $("body").addClass("connected").removeClass("disconnected")
    $("#message").html("待機中")
    # Called when the subscription is ready for use on the server

  disconnected: ->
    $("body").addClass("disconnected").removeClass("connected")
    $("#message").html("サーバーが落ちています。\n開発チームに連絡してください。")
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $("#message").html(data['message'])
    setTimeout ->
      $("#message").html("待機中")
      return
    , 5000
    msg = new SpeechSynthesisUtterance(data['message'])
    msg.lang = "ja-JP";
    window.speechSynthesis.speak(msg);
    # Called when there's incoming data on the websocket for this channel

  speak: ->
    @perform 'speak'
