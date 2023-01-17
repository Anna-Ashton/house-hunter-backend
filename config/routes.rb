Rails.application.routes.draw do
  
  # resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # post "/signup", to: "landlords#create"

  resources :landlords, only: [:index, :create, :destroy]
  resources :houses
  resources :reviews
  resources :users
  resources :bookings

  post '/login', to: 'auth#create'
  delete "/logout", to: "auth#destroy"
  get "/me", to: "landlords#index"
end

