Rails.application.routes.draw do

  root "users#index"

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  resources :sessions, only: [:new, :create, :destroy]
  resources :event
  resources :categories
  resources :users

end
