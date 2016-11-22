Rails.application.routes.draw do
  root to: 'books#index'

  resources :users, only: [:index, :profile]

  resources :books, only: [:index, :show]

  resources :genre, only: [:show]

  get '/index' => 'books#index'
  get '/users/index' => 'users#index'
  get '/users/:user_id/profile' => 'users#profile'

  #currently nonexistant
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  get '/logout' => 'sessions#destroy'

  post 'login' => 'sessions#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
