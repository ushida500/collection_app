Rails.application.routes.draw do
  root 'users#index'
  resources :sessions, only: [:new, :create]
  resources :users
  resources :events
end


