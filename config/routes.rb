Rails.application.routes.draw do
  root 'events#home'
  resources :users
  resources :events
  resources :sessions, only: [:new, :create]
  
  delete '/logout' => 'sessions#destroy', as: :logout
end




