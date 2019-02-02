Rails.application.routes.draw do
  devise_for :users
  resources :expeditions do
    get "react", on: :collection
  end
  resources :planets
  resources :spaceships
  resources :galaxies

  root to: 'planets#index'

  scope module: "api" do
    namespace "v1" do
      resources :expeditions, only: %I[show index create]
    end
  end
end
