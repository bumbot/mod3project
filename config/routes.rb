Rails.application.routes.draw do

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#logout"

  resources :questions, only: [:create, :index, :show]
  resources :battle_data, only: [:index, :show, :create, :update]
  resources :battles, only: [:index, :show, :create, :update]
  resources :users, only: [:index, :show]
  resources :rooms, only: [:index, :show, :create, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # action cable
  mount ActionCable.server => '/cable'
end
