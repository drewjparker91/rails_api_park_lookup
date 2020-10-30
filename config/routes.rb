Rails.application.routes.draw do
  resources :parks

  get '/random', to: 'parks#random'
end
