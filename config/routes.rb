Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "pages#home"

  get "my_portfolio", to: "users#my_portfolio"

  get "search", to: "stocks#search"

  resources :user_stocks, only: [:create, :destroy]

  get "user_stocks", to: "user_stocks#create"

  get "my_friends", to: "friends#my_friends"

  get "search_friend", to: "search_friend#search"

  resources :friends, only: [:create, :destroy]

  get "friends", to: "friends#create"

end
