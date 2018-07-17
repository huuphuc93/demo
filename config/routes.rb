Rails.application.routes.draw do
  devise_for :users
  root to: 'articles#index'
  resources :articles do
    resources :comments
  end
  resources :products
  get 'products/page/:page', to: 'products#index'
  resources :employees, only: [:index]
end
