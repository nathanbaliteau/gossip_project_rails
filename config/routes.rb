Rails.application.routes.draw do
  resources :users, only: [:show, :index]
  resources :gossips
  get '/contact', to: 'contact#show'
  get '/team', to: 'team#show'
end
