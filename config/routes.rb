Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      # Users
      post 'user_token' => 'user_token#create'

      get    '/users'          => 'users#index'
      get    '/users/current'  => 'users#current'
      post   '/users/create'   => 'users#create'
      patch  '/user/:id'       => 'users#update'
      delete '/user/:id'       => 'users#destroy'
    end
  end
end
