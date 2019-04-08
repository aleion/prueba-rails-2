Rails.application.routes.draw do
  
  resources :tareas

  resources :dones, only: [:index, :update] 
  

  devise_for :users, controllers: {
    registration: 'users/registration'
  }

  root to: 'dones#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
