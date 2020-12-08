class User::GuiderController < User::UserApplicationController
  before_action :guider_context, only: %i[show]

  def show
  end

  private

  def guider_context
    @guider = Account.with_role(:guider).find(guider_params[:id])
  end

  def guider_params
    params
  end
end
