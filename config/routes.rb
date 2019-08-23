Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :boardgames
      # resources :users
      post '/auth', to: 'auth#create'
      get '/current_user', to: 'auth#show'
      post '/current_user', to: 'users#create'
      get '/current_user/:id', to: 'users#show'
      patch '/current_user/:id', to: 'users#update'
      delete '/current_user/:id', to: 'users#destroy'
    end
  end
end
