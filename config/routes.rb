Rails.application.routes.draw do

  root to: 'books#index'

  resources :users, only: [:index, :profile]

  resources :books, only: [:index, :show]

  resources :wishlist, only: [:show] do
    put :add_book
    delete :remove_item
  end

  get '/index' => 'books#index'
  get '/users/index' => 'users#index'
  get '/users/:user_id/profile' => 'users#profile'
  #get '/users/profile' => 'users#profile'
  get '/login' => 'sessions#new'
  get '/register' => 'users#new'
  get '/users/wishlist' => 'wishlist#show'

  post '/login' => 'sessions#create'
  post '/users' => 'users#index'

  #currently nonexistant
  get '/logout' => 'sessions#destroy'
  get '/users/user_id/wishlist'
  #get "activate/:code" => "users#activate", :as => "activate"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
