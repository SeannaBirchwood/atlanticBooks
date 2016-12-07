Rails.application.routes.draw do


  root to: 'books#index'

  resources :users, only: [:index, :show, :new]

  resources :books, only: [:index, :show]

  resources :sessions, only: [:create]

  resources :bookstores, only: [:index]


  resource :favourites, only: [:show] do
    put    :add_item
  end

  # resource :wishlist, only: [:show] do
  #   put     :add_item
  # end

  namespace :user do
    root to: 'users#show'
    resources :wishlist, only: [:show] do
      put :add_book
      delete :remove_book
    end
  end

  get '/login' => 'sessions#new'
  get '/classics' => 'classics#show'
  get '/provinces' => 'provinces#index'
  get '/feature/author' => 'featureds#index'
  get '/feature/publisher' => 'featureds#show'
  get '/search' => 'searches#search'


  post '/users' => 'users#index'
  get 'search' => 'books#search'

  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/register' => 'users#new'
  post '/register' => 'users#create'

  get '/users' => 'users#index'
  get '/users/:user_id' => 'users#show'
  get '/users/:user_id/edit' => 'users#edit'
  get '/users/:user_id/wishlist' => 'wishlists#show'

  get 'favourites/favourites'
  get '/bookstores' => 'bookstores#index'
  get '/wishlist' => 'wishlist#show'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
