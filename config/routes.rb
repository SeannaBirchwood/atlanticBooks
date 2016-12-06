Rails.application.routes.draw do

  root to: 'books#index'

  resources :users, only: [:index, :show, :new]

  resources :books, only: [:index, :show]

  resources :sessions, only: [:create]

  resources :bookstores, only: [:show]


  resource :favourites, only: [:show] do
    put    :add_item
  end

  namespace :user do
    root to: 'users#show'
  end

  resources :wishlist, only: [:show] do
    put :add_book
    delete :remove_book
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/register' => 'users#new'
  post '/register' => 'users#create'
  post '/sessions' => 'sessions#new'

  get '/users' => 'users#index'
  get '/users/:user_id' => 'users#show'
  get '/users/:user_id/edit' => 'profiles#show'

  get '/users/:user_id/wishlist' => 'wishlists#show'
  get 'favourites/favourites'
  get '/bookstores' => 'bookstores#index'
  get '/classics' => 'classics#show'

  #currently nonexistant
  #get "activate/:code" => "users#activate", :as => "activate"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
