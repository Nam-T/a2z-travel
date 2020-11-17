Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "admin/homepage#index"

  devise_for :accounts, skip: [:session, :password, :registrations]
  as :account do
    get "sign_in", to: "sessions#new", as: :new_account_session
    post "sign_in", to: "sessions#create", as: :account_session
    delete "logout", to: "sessions#destroy", as: :destroy_account_session
    get "forgot_password", to: "passwords#new", as: :new_account_password
    post "forgot_password", to: "passwords#create", as: :account_password
    get "reset_password", to: "passwords#edit", as: :edit_account_password
    put "forgot_password", to: "passwords#update"
    get "confirmation", to: "confirmations#show"
    put "confirmation", to: "confirmations#update"
    get "sign_up", to: "registrations#new", as: :new_account_registration
    post "sign_up", to: "registrations#create", as: :account_registration
  end
end
