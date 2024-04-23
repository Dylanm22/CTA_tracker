require 'sidekiq/web'
Rails.application.routes.draw do
  resources :favorites
  resources :notification_times
  resources :stations
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
   get 'cover/show'
   root "cover#show"

   mount Sidekiq::Web => '/sidekiq'
end
