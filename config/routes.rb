Rails.application.routes.draw do
  resources :parks

  get 'name/random', to: 'parks#random'
end
