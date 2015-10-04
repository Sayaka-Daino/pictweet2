Rails.application.routes.draw do
  devise_for :users
  get 'tweets' => 'tweets#index'
  get 'tweets/new' => 'tweets#new'
  post 'tweets' => 'tweets#create'
  root 'tweets#index'
  get 'users/:id' => 'users#show'
end