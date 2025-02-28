Rails.application.routes.draw do
  root to: "main#index"
  get 'api/movies', to: "api#movies"

  get 'app', to: "main#user_index", as: "app"

  get 'list/:id', to: 'lists#show', as: 'list'
  post 'list', to: 'lists#create', as: 'create_list'

  post 'bookmark', to: "bookmarks#create", as: "create_bookmark"

  devise_for :users


  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
