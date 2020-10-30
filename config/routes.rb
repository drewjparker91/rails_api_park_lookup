Rails.application.routes.draw do
  resources :parks

  get '/random', to: 'parks#random'
  get '/all', to: 'parks#all'
  get '/highest_rated', to: 'parks#highest_rated'
  get '/lowest_rated', to: 'parks#lowest_rated'

end
