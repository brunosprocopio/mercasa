Rails.application.routes.draw do
  resources :users
  resources :products

  root 'home#index'
end
