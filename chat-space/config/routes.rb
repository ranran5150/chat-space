Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'messages#index'
  resources :users, only: [:edit,:update]
  resources :groups, only: [:new,:create,:edit,:update]
  get 'messages' => 'messages#index'
end
