Rails.application.routes.draw do
  resources :expeditions
  resources :planets
  resources :spaceships
  resources :galaxies

  root to: 'planets#index'
end
