Rails.application.routes.draw do


  resources :orders
  resources :tailors
  devise_for :users
  get 'welcome/index', to: "welcome#index"

  root "customers#index"

  resources :customers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
