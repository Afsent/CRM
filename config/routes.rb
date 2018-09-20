Rails.application.routes.draw do
  resources :roles
  resources :orders
  get 'order/new'


  devise_for :users, controllers: { registrations: 'users/registrations' }

  get 'users/show'
  get 'main/welcome'
  get 'admin/users'


  root :to => 'main#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
