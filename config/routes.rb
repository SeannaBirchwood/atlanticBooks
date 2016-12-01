Rails.application.routes.draw do

  root to: 'books#index'

  resources :users, only: [:index, :profile, :show, :new] do
    resources :profiles, only: [:show]
  end

  resources :books, only: [:index, :show]

  resources :sessions, only: [:create]

  namespace :user do
    root to: 'profile#show'
    resources :wishlist, only: [:show] do
      put :add_book
      delete :remove_book
    end
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/register' => 'users#new'
  post '/register' => 'users#create'
  post '/sessions' => 'sessions#new'

  get '/users' => 'users#index'
  get '/users/:user_id' => 'users#show'
  get '/users/:user_id/edit' => 'users#edit'
  get '/users/:user_id/wishlist' => 'users#wishlist'

  #currently nonexistant
  #get '/users/user_id/wishlist'
  #get "activate/:code" => "users#activate", :as => "activate"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
