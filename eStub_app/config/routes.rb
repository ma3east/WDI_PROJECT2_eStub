Rails.application.routes.draw do

  root "sessions#new"
  

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  get "sign_up", to: "users#new", as: "sign_up"

  resources :sessions, only: [:index, :new, :create, :destroy]

  resources :users

  resources :event
  resources :categories
  
end
