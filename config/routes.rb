Rails.application.routes.draw do

  resources :plants do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:show]
  devise_for :users
  root to: "pages#home"

end
