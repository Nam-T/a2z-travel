class BroadcastMessageJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast "room_channel", "helo"
  end

  private
  def render_message(message)
    ApplicationController.renderer.render message
  end
end
