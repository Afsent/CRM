Rails.application.routes.draw do
  resources :orders
  get 'order/new'

  devise_for :users

  get 'users/show'
  get 'main/welcome'


  root :to => 'main#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
