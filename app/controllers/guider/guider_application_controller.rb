class Guider::GuiderApplicationController < ApplicationController
  before_action :authenticate_guider!

  private

  def authenticate_guider!
    @current_guider = Account.find(params[:guider_id])
    redirect_to redirect_path unless current_account.has_role? :guider
    redirect_to redirect_path if current_account != @current_guider
  end
end
