Rails.application.routes.draw do



  root to: 'books#index'

  resources :users, only: [:index, :profile]

  resources :books, only: [:index, :show]

  resources :genre, only: [:show]

  resource :favourites, only: [:show] do
    put    :add_item
  end

  resource :wishlist, only: [:show] do
    put     :add_item
  end

  get '/index' => 'books#index'
  get '/users/index' => 'users#index'
  get '/users/:user_id/profile' => 'users#profile'
  get '/users/register' => 'users#new'
  get '/login' => 'sessions#new'
  get '/classics' => 'classics#show'
  get '/provinces' => 'provinces#index'
  get '/feature/author' => 'featureds#index'
  get '/feature/publisher' => 'featureds#show'
  get '/search' => 'searches#search'


  post '/users' => 'users#index'
  get 'search' => 'books#search'

  #currently nonexistant
  get '/logout' => 'sessions#destroy'

  post 'login' => 'sessions#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
