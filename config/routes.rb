Rails.application.routes.draw do
  resources :homepage

  devise_for :users

  root controller: :rooms, action: :index

  resources :room_messages
  resources :rooms
  mount ActionCable.server => "/cable"
end
