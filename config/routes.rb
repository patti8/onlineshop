Rails.application.routes.draw do
  devise_for :users, path: "users", controllers: { sessions: "users/sessions", registrations: "users/registrations", password: "users/passwords"}, path_names: { sign_in: "login", sign_up: "register", sign_out: "logout" }
  devise_for :admins
  root 'pages#index'
  resources 'pages'

  # strip
  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
    get 'success', to: 'checkout#success', as: 'checkout_success'
  end

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
  end

end
