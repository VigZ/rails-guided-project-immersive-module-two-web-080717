Rails.application.routes.draw do
  get '/users/signup', to: 'users#signup'
  resources :users, except: :new
  resources :pictures
  resources :tags
  resources :comments


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
