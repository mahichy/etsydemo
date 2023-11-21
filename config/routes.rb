Rails.application.routes.draw do
  devise_for :users
  resources :listings
  get 'pages/about'
  get 'pages/contact'
  get 'seller' => "listings#seller"

  root "listings#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
