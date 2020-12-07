class Admin::SettingController < Admin::AdminApplicationController
  def index
  end

  def update
    @current_admin.update_attributes(admin_params)
    @current_admin.avatar = admin_params[:avatar]
    redirect_to admin_setting_index_path(@current_admin)
  end

  private

  def admin_params	
    params.require(:account).permit(:avatar)
  end
end
