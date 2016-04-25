Rails.application.routes.draw do
  root 'statics#home'
  devise_for :users
  resources :users, only: [:show, :index]
  resources :comments, only: [:create, :destroy]
  resources :invites
  resources :weddings
end
