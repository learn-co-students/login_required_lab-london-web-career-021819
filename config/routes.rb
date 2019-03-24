Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'application#hello'

  # resources :sessions, only: [:create, :show]

    #get '/login' => 'sessions#new'
    get  '/show' => 'sessions#show'
    get  '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    post '/logout' => 'sessions#destroy'
    get '/secrets/show' => 'secrets#show'

    def hello
    end

end
