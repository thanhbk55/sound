class SoundChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "sound_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    ActionCable.server.broadcast 'sound_channel', message: data['message']
  end
end
