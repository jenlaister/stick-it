Rails.application.routes.draw do

  get '/', to: 'application#root', as: 'root'
  get '/signup', to: 'users#new', as: 'signup'
  post 'signup', to: 'users#create'
  get '/signin', to: 'sessions#new', as: 'signin'
  post '/signin', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'logout'

  # get '/routines/:id', to: 'routines#show'
  post '/routines/:id', to: 'routines#update'

  get '/habits/new', to: 'habits#new', as: 'new_habit'

  resources :users
  resources :routines
  resources :habits

end
