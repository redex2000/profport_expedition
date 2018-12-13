Rails.application.routes.draw do
  resources :expeditions
  resources :planets
  resources :spaceships

  root to: 'planets#index'
end
