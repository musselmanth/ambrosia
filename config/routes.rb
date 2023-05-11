Rails.application.routes.draw do

  root "welcome#index"
  get "/register", to: "users#new"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  post "/logout", to: "sessions#destroy"

  resources :users, except: [:index, :new]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
