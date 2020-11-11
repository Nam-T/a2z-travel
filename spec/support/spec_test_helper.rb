require 'rails_helper'

module SpecTestHelper
  def login(user)
    allow(controller).to receive(:authenticate_account!).and_return(true)
    allow(controller).to receive(:current_user).and_return(user)
  end
end
