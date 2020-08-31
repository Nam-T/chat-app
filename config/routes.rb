Rails.application.routes.draw do
  root controller: :homepage, action: :index

  devise_for :users

  # root controller: :rooms, action: :index

  resources :room_messages
  resources :rooms
  mount ActionCable.server => "/cable"
end
