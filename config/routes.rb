Rails.application.routes.draw do
  
  root to: 'gossips#index'

  resources :sessions, only: [:new, :create, :destroy]
  resources :cities, only: [:show]
  resources :users, only: [:show, :new, :create]
  resources :gossips do
    resources :comments, only: [:create, :edit, :update, :destroy]
  end

  get '/contact', to: 'contact#show'
  get '/team', to: 'team#show'
end
