Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "role#redirect"

  get 'redirect', to: 'role#redirect'

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

  resources :admin do
    scope module: :admin do
      resources :homepage, controller: 'homepage', only: %i[index] do
      end

      resources :setting, controller: 'setting', only: %i[index update] do
      end
    end
  end

  resources :guider do
    scope module: :guider do
      resources :homepage, controller: 'homepage', only: %i[index] do
      end
    end
  end

  resources :user do
    scope module: :user do
      resources :homepage, controller: 'homepage', only: %i[index] do
      end

      resources :guider, controller: 'guider', only: %i[show] do
      end

      resources :setting, controller: 'setting', only: %i[index update] do
      end

      resources :blog, controller: 'blog', only: %i[index] do
      end

      resources :follow, controller: 'follow', only: %i[index create destroy] do
      end

      resources :history, controller: 'history', only: %i[index] do
      end

      resources :messenger, controller: 'messenger', only: %i[index create show] do
      end
    end
  end
end
