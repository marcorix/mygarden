Rails.application.routes.draw do

  resources :plants do
    resources :bookings, only: [:create]
  end
  devise_for :users
  root to: "pages#home"

end
