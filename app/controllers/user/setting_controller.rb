class User::SettingController < User::UserApplicationController
  def index
  end

  def update
    @current_user.update_attributes(user_params)
    @current_user.avatar = user_params[:avatar]
    redirect_to user_setting_index_path(@current_user)
  end

  private

  def user_params
    params.require(:account).permit(:avatar)
  end
end
