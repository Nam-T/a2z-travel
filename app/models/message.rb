class Message < ApplicationRecord
  # t.string   'content'
  # t.integer  'room_message_id'
  # t.integer  'sender_id'

  belongs_to :account, foreign_key: 'sender_id'
  belongs_to :room_message
end
