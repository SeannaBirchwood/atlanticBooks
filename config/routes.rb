Rails.application.routes.draw do

  get '/login' => 'sessions#create'
  get '/register' => 'registrations#new', as: 'new_user_registration'

  root to: 'books#index'

  resources :users, only: [:index, :profile]

  resources :books, only: [:index, :show]

  resources :genre, only: [:show]

  get '/index' => 'books#index'
  get '/users/index' => 'users#index'
  get '/users/:user_id/profile' => 'users#profile'
  get '/users/profile' => 'users#profile'

  post '/login' => 'sessions#create'
  post '/users' => 'users#index'

  #currently nonexistant
  get '/logout' => 'sessions#destroy'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
