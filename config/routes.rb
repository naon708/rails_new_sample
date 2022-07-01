Rails.application.routes.draw do
  root 'users#index'
  resources :users

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  # post 'logout' => 'user_sessions#destroy', :as => :logout
end
