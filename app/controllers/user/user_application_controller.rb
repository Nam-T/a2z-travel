class User::UserApplicationController < ApplicationController
  before_action :authenticate_user!

  private

  def authenticate_user!
    @current_user = Account.find(params[:user_id])
    redirect_to redirect_path if !current_account.has_role? :user
    redirect_to redirect_path if current_account != @current_user
  end
end
