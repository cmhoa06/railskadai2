Rails.application.routes.draw do
  devise_for :reservations
  devise_for :rooms
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :reservations
  resources :rooms
  resources :users
end
