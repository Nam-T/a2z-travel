class User::GuiderController < User::UserApplicationController
  skip_before_action :verify_authenticity_token, :only => :update
  before_action :guider_context, only: %i[show]

  def show
  end

  def update
    cookies[:guider_id]  = params[:id]
    cookies[:journey_id] = params[:journey][:id]
    @guider =  Account.with_role(:guider).find(params[:id])
    redirect_to user_guider_path
  end

  def homepage_redirect
    cookies[:guider_id]  = params[:guider_id]
    cookies[:journey_id] = params[:journey_id]
    @guider =  Account.with_role(:guider).find(params[:guider_id])
    redirect_to user_guider_path(id: @guider.id)
  end

  private

  def guider_context
    @guider = Account.with_role(:guider).find(guider_params[:id])
  end

  def guider_params
    params
  end
end
