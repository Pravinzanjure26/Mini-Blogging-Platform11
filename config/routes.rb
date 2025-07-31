Rails.application.routes.draw do
  # Dashboard route
  get 'dashboard', to: 'dashboard#index', as: 'dashboard'
  
  # Root path
  root 'home#index'

  # Devise authentication routes
  devise_for :users

  # Nested resources: posts and comments
  resources :posts do
    resources :comments, only: [:create]
  end

  # Admin namespace for managing users and posts
  namespace :admin do
    get "posts/index"
    get "posts/destroy"
    get "users/index"
    get "users/destroy"
    resources :users, only: [:index, :destroy]
    resources :posts, only: [:index, :destroy]
  end
end

