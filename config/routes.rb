Rails.application.routes.draw do

  resources :tenants, only: [:index, :show, :create, :update, :destroy]

  resources :leases, only: [:index, :show, :destroy]

  resources :apartments, only: [:index, :show, :create, :update, :destroy]


  # get 'tenants/index'
  # get 'tenants/create'
  # get 'tenants/update'
  # get 'tenants/destroy'
  # get 'leases/index'
  # get 'leases/create'
  # get 'leases/delete'
  # get 'apartments/index'
  # get 'apartments/create'
  # get 'apartments/update'
  # get 'apartments/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
