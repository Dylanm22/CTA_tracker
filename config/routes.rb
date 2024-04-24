require 'sidekiq/web'
Rails.application.routes.draw do
  resources :favorites, only:[:create,:index,:destroy]
  resources :notification_times, only:[:create,:new,:edit,:update,:destroy]
  resources :stations,  only:[:index,:show,:new,:create]
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
   get 'cover/show'
   root "cover#show"

   mount Sidekiq::Web => '/sidekiq'
end
