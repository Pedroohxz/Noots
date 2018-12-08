Rails.application.routes.draw do
  resources :noots
  resources :materias
  resources :create
  resources :lownoots
  root 'materias#index'
  
 
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
