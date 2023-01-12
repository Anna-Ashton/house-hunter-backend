Rails.application.routes.draw do
  post "/signup", to: "landlords#create"
  post "/login", to: "auth#create"
  post "/logout", to: "auth#destroy"
    # resources :landlords
  resources :houses
  resources :reviews
  # resources :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
