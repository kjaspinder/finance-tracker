# frozen_string_literal: true

Rails.application.routes.draw do
  resources :user_stocks, only: [:create, :destroy]
  resources :friends, only: [:create, :destroy]
  devise_for :users
  root to: 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'friends', to: 'users#friends'
  get 'search_stock', to: 'stocks#search'
end
