Rails.application.routes.draw do
  root 'statics#home'
  devise_for :users
end
