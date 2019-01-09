Rails.application.routes.draw do
  devise_for :users

  resources :chatrooms do
    resource :chatroom_users
    resources :messages
  end

  resources :direct_messages

  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
  root to: "chatrooms#index"
end
