Rails.application.routes.draw do
  root 'pages#home'

  resources :users, :only => [:new, :create, :index, :update]
  get '/users/edit' => 'users#edit', :as => 'edit_user'


  resources :flights
  resources :reservations
  resources :planes
  resources :users


  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  end
