class User::FollowController < User::UserApplicationController
  def index
    @guiders = @current_user.following
  end

  def create
    @guider = Account.with_role(:guider).find(params[:guider_id])
    @current_user.follow(@guider)
    respond_to do |format|
      format.js
    end
  end

  def destroy
    @guider = Follow.find(params[:id]).guider
    @current_user.unfollow(@guider)
    respond_to do |format|
      format.js
    end
  end
end
