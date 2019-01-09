Rails.application.routes.draw do
  resources :assignments
  resources :workflows
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :locations
  resources :masters
  devise_for :users

  resources :chatrooms do
    resource :chatroom_users
    resources :messages
  end

  resources :direct_messages

  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
  # root to: "chatrooms#index"
  root to: 'home#index'
end
