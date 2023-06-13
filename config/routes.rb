Rails.application.routes.draw do
  devise_for :users

  get 'users/new'
  get 'displays/new'
  get 'users/index'
  get 'displays/index'

  get 'posts/index'

  get 'posts/new'
  resources :displays
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
