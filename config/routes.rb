Rails.application.routes.draw do
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/books" => "books#index"
  post "/login" => "sessions#create"

  post "/seeker/login" => "seeker#create"
  delete "/seeker/logout" => "seeker#destroy"
  post "/seeker/signup" => "seeker#register"

  post "/landlord/login" => "landlord#create"
  delete "/landlord/logout" => "landlord#destroy"
  post "/landlord/signup" => "landlord#register"

  #properties
  # post "/properties" => "properties#create"
  
  post "/properties" => "properties#create"
  get "/properties" => "properties#index"

  delete "/logout" => "sessions#destroy"
  post "/signup" => "sessions#register"
end
