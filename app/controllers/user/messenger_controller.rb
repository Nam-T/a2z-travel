class User::MessengerController < User::UserApplicationController
  def index
    @rooms = @current_user.room_messages
  end
end
