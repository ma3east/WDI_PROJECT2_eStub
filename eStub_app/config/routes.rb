Rails.application.routes.draw do
  
  root "users#index"
  get "login", to: "sessions#new"
  delete "/logout", to: "sessions#destroy"

  resources :sessions, only: [:new, :create, :destroy]
  resources :users

end
