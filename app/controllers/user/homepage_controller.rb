class User::HomepageController < User::UserApplicationController
  def index
    @journeys = Journey.all.paginate page: params[:page], per_page: 12
  end
end
