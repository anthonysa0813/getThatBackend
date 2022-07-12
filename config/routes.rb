Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/books" => "books#index"
  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"
  post "/signup" => "sessions#register"
end
