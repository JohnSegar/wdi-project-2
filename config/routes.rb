Rails.application.routes.draw do
  root 'statics#home'
  devise_for :users
  resources :users, only: [:show, :index]
  resources :invites
  resources :weddings
end
