Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root 'users#index'
  resources :sessions, only: [:new, :create]
  resources :users
  resources :events

  delete '/logout' => 'sessions#destroy', as: :logout
end


