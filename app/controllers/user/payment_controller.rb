class User::PaymentController < User::UserApplicationController
  def order
    history = History.new(
      user_id: params[:user_id],
      guider_id: params[:guider_id],
      journey_id: params[:journey_id],
      status: 'pending',
      date_start: params[:history][:date_start]
    )

    respond_to do |format|
      if history.save
        format.js
      else

      end
    end
  end
end
