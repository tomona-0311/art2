Rails.application.routes.draw do
  devise_for :users
  get 'displays/new'
  get 'users/index'
  get 'displays/index'

  get 'posts/index'
  get 'users/new'
  get 'posts/new'
  resources :displays

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
