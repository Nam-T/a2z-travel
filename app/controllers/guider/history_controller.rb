class Guider::HistoryController < Guider::GuiderApplicationController
  def index
    @histories = History.where(guider_id: @current_guider.id)
  end
end
