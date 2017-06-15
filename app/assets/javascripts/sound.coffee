# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
App.room = App.cable.subscriptions.create "SoundChannel",
  # (省略)

  speak: (message) ->
    @perform 'speak', message: message
