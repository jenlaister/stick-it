Rails.application.routes.draw do

  get '/', to: 'application#root', as: 'root'
  resources :habits
  resources :users, only: [:new, :create, :show] #edit?
  get '/signin', to: 'sessions#new', as: 'signin'
  get '/signin', to: 'sessions#create'
  get '/logout', to: 'sessions:destroy', as: 'logout'

end
