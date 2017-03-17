Rails.application.routes.draw do

  get 'profile/userprofile'

  get 'profile/user_orders'

  devise_for :users
  resources :carts, only: :destroy
  resources :orders, only: [:new, :create, :show]
  resources :line_items, only: [:create, :destroy]
  root 'catalogs#index'
  get 'catalogs/index' => 'catalogs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
