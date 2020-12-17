class Guider::HomepageController < Guider::GuiderApplicationController
  skip_before_action :verify_authenticity_token, :only => :journey

  def index
    @journeys = Journey.all.paginate page: params[:page], per_page: 12
  end

  def journey
    cookies[:journey_id] = params[:journey][:id]
    redirect_to guider_homepage_index_path
  end
end
