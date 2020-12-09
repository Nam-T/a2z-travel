class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
  end
end
