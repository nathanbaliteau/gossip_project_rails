Rails.application.routes.draw do
  get 'user/:user_id', to: 'user#show_profile'
  get '/gossip/:id', to: 'gossip#show_specific_gossip'
  get '/home', to: 'home#show_gossips'
  get 'welcome/:id', to: 'welcome#user_id'
  get '/contact', to: 'contact#show'
  get '/team', to: 'team#show'
end
