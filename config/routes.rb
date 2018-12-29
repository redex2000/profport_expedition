Rails.application.routes.draw do
  devise_for :users
  resources :expeditions
  resources :planets
  resources :spaceships
  resources :galaxies

  root to: 'planets#index'
end
