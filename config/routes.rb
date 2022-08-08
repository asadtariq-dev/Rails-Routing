Rails.application.routes.draw do
  get 'review/index'
  root to: 'products#index'
  resources :products

  # get 'products', to: 'products#index', as: 'products'
  # get 'products/:id', to: 'products#show', as: 'product', id: /\d+/
end
