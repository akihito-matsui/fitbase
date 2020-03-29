Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get 'signup', to: 'users#new'
  get 'userserch', to: 'users#index'
  resources :users, only: [:index, :show, :new, :create]
end
