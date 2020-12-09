class User::MessengerController < User::UserApplicationController
  before_action :room_message_context, only: %i[create]

  def index
    @rooms = @current_user.room_messages
    @room = @rooms.first
    redirect_to user_messenger_path(id: @room.id)
  end

  def show
    @rooms = @current_user.room_messages
    @room = RoomMessage.find(params[:id])
  end

  def create
    @message = @current_user.messages.new(message_param)
    @message.assign_attributes(
      room_message: @room_message
    )

    if @message.save
      BroadcastMessageJob.perform_later(@message, @room_message, @current_user)
    end

    respond_to do |format|
      format.js {render :js => ""}
    end
  end

  private

  def message_param
    params.permit(
      :content
    )
  end

  def room_message_context
    @room_message = RoomMessage.find(params.require(:message)[:room_message_id])
  end
end
