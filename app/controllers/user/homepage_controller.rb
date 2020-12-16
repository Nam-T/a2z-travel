class User::HomepageController < User::UserApplicationController
  def index
    @journeys = Journey.all
  end
end
