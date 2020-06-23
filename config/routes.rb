Rails.application.routes.draw do
  
  root 'users#home'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  post '/logout' => 'sessions#destroy'

end
