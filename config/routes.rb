Rails.application.routes.draw do
  root 'sessions#home'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/destinations' => 'destinations#index'

  #login route
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  #logout route
  delete '/logout' => 'sessions#destroy'

    resources :visits
    resources :users do
      resources :destinations, only: [:new, :create, :index]
    end
    resources :destinations do
      resources :vists, only: [:new, :create, :index]
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
