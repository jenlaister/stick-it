Rails.application.routes.draw do

  get '/', to: 'application#root', as: 'root'
  resources :users, only: [:new, :create, :show] #edit?
  get '/signin', to: 'sessions#new', as: 'signin'
  post '/signin', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  resources :habits

end
