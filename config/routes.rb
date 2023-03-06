Rails.application.routes.draw do

  resources :plants do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:show, :update]

  devise_for :users

  root to: "pages#home"
  get 'dashboard', to: 'pages#dashboard'


end
