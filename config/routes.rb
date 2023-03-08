Rails.application.routes.draw do
  devise_for :users

  root to: "plants#index"

  resources :plants do
    resources :bookings, only: [:create]
    resources :favourites, only: [:create]
  end

  resources :bookings, only: [:show, :update]

  get 'dashboard', to: 'pages#dashboard'


end
