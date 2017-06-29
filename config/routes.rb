Rails.application.routes.draw do
  # get 'admin' => 'admin/index'
  controller :admin do
    get 'admin' => :index
  end
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  # get 'sessions/new'

  # get 'sessions/create'

  # get 'sessions/destroy'

  resources :users
  resources :orders
  resources :line_items
  resources :carts
  # get 'store/index'
  root 'store#index', as: 'store_index'

  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
