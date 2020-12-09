class BroadcastMessageJob < ApplicationJob
  queue_as :default

  def perform(message, room_message, current_account)
    check_auth = message.account != current_account ? true : false
    hash = if check_auth
             {
               content: message.content,
               created_at: message.created_at,
               avatar_url: room_message.guider.avatar.url,
               check_auth: check_auth
             }
           else
             {
               content: message.content,
               created_at: message.created_at,
               avatar_url: current_account.avatar.url,
               check_auth: check_auth
             }
           end
    ActionCable.server.broadcast "room_channel", hash
  end
end
