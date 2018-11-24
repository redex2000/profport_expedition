Rails.application.routes.draw do
  resources :expeditions
  resources :planets
  get '/site/hi', to: 'site#hello'
  get '/site/bye', to: redirect('https://ya.ru')
  get '/site/about', to: 'site#about'
  root to: 'planets#index'
end
