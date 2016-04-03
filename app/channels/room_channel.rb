class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    # msg = Message.new content: data['message']
    MessageBroadcastJob.perform_later data['message']
  end
end
