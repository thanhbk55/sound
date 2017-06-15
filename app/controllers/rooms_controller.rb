class RoomsController < ApplicationController
  def show
    # @messages = Message.all
  end

  def send_message
    MessageBroadcastJob.perform_now params["message"]
  end
end
