Rails.application.routes.draw do

  match "/boards/all" => "boards#all", via: [:get]

  resources :boards
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

 # match "/welcome" => "welcome#create", via: [:post]

  root 'boards#index'

end
