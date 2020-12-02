class Admin::AdminApplicationController < ApplicationController
  before_action :authenticate_admin!

  private

  def authenticate_admin!
    @current_admin = Account.find(params[:admin_id])
    redirect_to redirect_path unless current_account.has_role? :admin
    redirect_to redirect_path if current_account != @current_admin
  end
end
