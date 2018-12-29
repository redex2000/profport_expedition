Rails.application.routes.draw do
  resources :sessions, only: %I[new create destroy]
  resources :expeditions
  resources :planets
  resources :spaceships
  resources :galaxies

  root to: 'planets#index'
end
