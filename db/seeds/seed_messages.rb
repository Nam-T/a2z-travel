user = Account.with_role(:user).first
guiders = Account.with_role(:guider).limit(5)
guiders.each do |guider|
  room_message = RoomMessage.create(user_id: user.id, guider_id: guider.id)
  room_message.save
  (1..10).each do |index|
    room_message.messages.create(sender_id: user.id, content: Faker::Name.name)
    room_message.messages.create(sender_id: guider.id, content: Faker::Name.name)
  end
end
