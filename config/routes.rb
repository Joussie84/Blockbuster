Rails.application.routes.draw do
  resources :peliculas, only: [:index, :edit, :update, :new, :create]
  resources :clientes, only: [:index, :new, :create, :edit, :update]
  root to: 'peliculas#index'
end
