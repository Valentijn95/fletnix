Rails.application.routes.draw do
  root to: "main#index"
  get '/', to: "main#index"
  get 'api/movies', to: "api#movies"

  get 'app', to: "main#user_index", as: "app"

  get 'list/:id', to: 'lists#show', as: 'list'
  post 'list', to: 'lists#create', as: 'create_list'

  post 'bookmark', to: "bookmarks#create", as: "create_bookmark"

  get 'lists', to: 'main#user_index'

  devise_for :users

  # Defines the root path route ("/")
  # root "posts#index"
end
