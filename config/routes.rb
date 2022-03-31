require 'sidekiq/web'

Rails.application.routes.draw do
  get 'task', to: 'task#index'
  post 'task/create', to: 'task#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
