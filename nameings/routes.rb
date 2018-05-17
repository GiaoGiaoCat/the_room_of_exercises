Rails.application.routes.draw do

  get "login/", to: "sessions#login", as: 'login'
  get "logout/", to: "sessions#logout"
  post "login_attempt/", to: "sessions#login_attempt"

  resources :users, only: [:new, :create, :show]

  resources :vacation_properties, path: "/properties"
  resources :reservations, only: [:new, :create]
  post "reservations/incoming", to: 'reservations#accept_or_reject', as: 'incoming'

  # Home page
  root 'main#index', as: 'home'

end
