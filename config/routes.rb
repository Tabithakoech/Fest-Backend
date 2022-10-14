Rails.application.routes.draw do
  # resources :users
  # resources :concerts
  # resources :comments
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :comments, only: [:index, :create, :update, :show, :destroy]
  resources :concerts, only: [:index, :show]
  resources :users, only: [:index, :create, :show]
  
  post "/login", to: "sessions#create"
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  delete "/logout", to: "sessions#destroy"

  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  # get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
