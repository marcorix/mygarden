Rails.application.routes.draw do
  devise_for :users

  root to: "plants#index"

  resources :plants do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:show, :update]

  get 'dashboard', to: 'pages#dashboard'
  get 'plants/:id/favorite', to: 'plants#favorite', as: :favorite
  get 'plants/:id/unfavorite', to: 'plants#unfavorite', as: :unfavorite

end
