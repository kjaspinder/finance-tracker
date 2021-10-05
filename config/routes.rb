# frozen_string_literal: true

Rails.application.routes.draw do
  resources :user_stocks, only: [:create, :destroy]
  resources :friendships, only: [:create, :destroy]
  devise_for :users
  root to: 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'friends', to: 'users#friends'
  get 'search_stock', to: 'stocks#search'
  get 'search_friends', to: 'users#search'
  resources :users, only: [:show]
end
