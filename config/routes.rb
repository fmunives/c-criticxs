Rails.application.routes.draw do
  resources :games
  resources :companies
  # get 'games', to: 'games#index'
  # get 'games/:id', to: 'games#show'
  # get 'companies', to: 'companies#index'
end
