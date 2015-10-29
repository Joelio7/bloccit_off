Rails.application.routes.draw do
  get 'home/about'

  devise_for :users
  resources :users, only: [:show]

  root to: 'home#about'
end
