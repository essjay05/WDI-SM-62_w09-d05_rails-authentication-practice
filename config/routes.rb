Rails.application.routes.draw do
  
  root 'users#index'
  resources :users #Automatically generates all RESTful routes for provided resources.
  resources :sessions, only: [:new, :create]
  delete '/logout', to: "sessions#destroy", as: :logout
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
