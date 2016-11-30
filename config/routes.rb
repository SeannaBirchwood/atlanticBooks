Rails.application.routes.draw do

  root to: 'books#index'

  resources :users, only: [:index, :profile, :show] do
    resources :profiles, only: [:show]
  end

  resources :books, only: [:index, :show]

  #resources :session

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

  get '/users/index' => 'users#index'
  get '/users/index/:user_id/profile' => 'users#profile'
  get '/profile/:user_id' => 'profiles#show'
  get '/register' => 'users#new'
  get '/users/wishlist' => 'wishlist#show'

  #currently nonexistant
  get '/users/user_id/wishlist'
  #get "activate/:code" => "users#activate", :as => "activate"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
