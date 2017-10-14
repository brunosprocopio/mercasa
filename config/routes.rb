Rails.application.routes.draw do
  get 'layouts/market'

  resources :users
  resources :products

  #get "/layouts/market" => "layouts#market"
  root 'home#index'
end
