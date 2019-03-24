Rails.application.routes.draw do

  root to: 'sessions#new'
  get 'secrets/show' => 'secrets#show'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

end
