class User::FollowController < User::UserApplicationController
  def index
    @guiders = @current_user.following
  end
end
