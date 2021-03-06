Rails.application.routes.draw do

  root "pages#home"

  get "login", to: "sessions#new", as: "login"
  post "login", to: "sessions#create"

  resources :sessions, only: [:new, :create, :destroy]

  get "sign_up", to: "users#new", as: "sign_up"
  resources :users

  resources :events
  resources :categories

  get "/logout", to: "sessions#destroy"

  
end
