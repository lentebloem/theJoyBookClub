Rails.application.routes.draw do

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/failure'

  root to: "home#index"
  devise_for :users
  resources :books, :users
  get "books", to: "books#index"
  get "books/new", to: "books#new"
  resources :users, only: [:index, :show] do
    resources :books, only: [:new, :create, :edit, :update], shallow: true
  end
  
  get   '/login', :to => 'sessions#new', :as => :login
  match '/auth/:provider/callback', :to => 'sessions#create', :via => [:get]
  match '/auth/failure', :to => 'sessions#failure',  :via => [:get]

  resources :follows, only: [:create, :destroy]
end
