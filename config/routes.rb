Rails.application.routes.draw do
  resources :subscriptions
  resources :tweets
  get '/search',to: 'tweets#search'
  get '/personal/page',to: 'tweets#personalpage'
  resources :profiles
  root 'home#index'
  devise_for :users
 
end
