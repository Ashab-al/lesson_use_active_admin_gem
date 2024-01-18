Rails.application.routes.draw do
  # admin
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  # public
  root 'posts#index'
  resources :posts, only: [:index, :show]
  
end
