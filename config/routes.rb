Rails.application.routes.draw do
  

  resources :tareas
  Rails.application.routes.draw do
  resources :tareas
    devise_for :users, controllers: {
      registration: 'users/registration'
    }
  end

  root 'tareas#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
