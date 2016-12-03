Rails.application.routes.draw do

  root to: 'books#index'

  resources :users, only: [:index, :show, :new]

  resources :books, only: [:index, :show]

  resources :sessions, only: [:create]

  resources :bookstores, only: [:show]

  namespace :user do
    root to: 'users#show'
    resources :wishlist, only: [:show] do
      put :add_book
      delete :remove_book
    end
  end

<<<<<<< HEAD
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/register' => 'users#new'
  post '/register' => 'users#create'
  post '/sessions' => 'sessions#new'
=======
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
>>>>>>> feature/booksapi

  get '/users' => 'users#index'
  get '/users/:user_id' => 'users#show'
  get '/users/:user_id/edit' => 'users#edit'
  get '/users/:user_id/wishlist' => 'users#wishlist'

  get '/bookstores' => 'bookstores#index'

  #currently nonexistant
  #get '/users/user_id/wishlist'
  #get "activate/:code" => "users#activate", :as => "activate"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
