Rails.application.routes.draw do
  get '/users/signup', to: 'users#signup'
  get '/signin', to: 'sessions#signin'
  get '/signout', to: 'sessions#signout'

  resources :sessions, only: :create
  resources :reactions, only: :create
  resources :users, except: :new
  resources :pictures
  resources :tags
  resources :comments


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
