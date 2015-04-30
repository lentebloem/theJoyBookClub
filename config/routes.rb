Rails.application.routes.draw do
  root to: "home#index"
  resources :books, :users
  get "books", to: "books#index"
  devise_for :users
  get "books/new", to: "books#new"
  resources :users, only: [:index, :show] do
  resources :quits, only: [:new, :create, :edit, :update], shallow: true
  end
    
  resources :follows, only: [:create, :destroy]
end
