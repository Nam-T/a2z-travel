class User::HistoryController < User::UserApplicationController
  def index
    @histories = History.where(user_id: @current_user.id)
  end
end
