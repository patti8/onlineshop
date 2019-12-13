Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  root 'pages#index'

  # admin
  namespace :admin do
    root 'my_admins#index'
    resources 'products'
    resources 'orders'
  end

  # users
  get 'user', to: 'users#index'
  namespace :user do
    resources 'orders', except: 'new'
    get 'orders/:id/new', to: 'orders#new', as: 'new_order_path'
  end

end
