Rails.application.routes.draw do

  root 'restaurants#index'

  devise_for :users

  resources :users, only: [:index, :show] 
  # get 'users', to: 'users#index', as: 'users'
  # get 'users/:id', to: 'users#show', as: 'user'

  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  post 'restaurants/:id', to: 'reviews#create'
end
