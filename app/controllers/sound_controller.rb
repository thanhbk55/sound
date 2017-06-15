class SoundController < ApplicationController
  def show
  end

  def send_message
    MessageBroadcastJob.perform_now params["message"]
  end
end
