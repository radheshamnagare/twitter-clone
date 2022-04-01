Rails.application.routes.draw do
  resources :profiles
  root 'home#index'
  devise_for :users
 
end
