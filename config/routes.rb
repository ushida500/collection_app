Rails.application.routes.draw do
  get '/index' => 'users#index'
  get '/show' => 'users#show'
  get '/new' => 'users#new'
  get '/create' => 'users#create'
  get '/edit' => 'users#edit'
  get '/update' => 'users#update'
  get '/destroy' => 'users#destroy'
end


# HOW TO USE THIS... 
# root 'users#index'
# resources :users
# resources :events