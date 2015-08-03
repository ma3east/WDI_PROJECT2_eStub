Rails.application.routes.draw do

  root "sessions#new"
  resources :users

  resources :event
  resources :categories

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  resources :sessions, only: [:index, :new, :create, :destroy]
  
end
