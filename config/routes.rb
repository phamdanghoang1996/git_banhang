Rails.application.routes.draw do
  resources :buyproducts, only: %i[index create]
  resources :homes, only: %i[index show], path: 'home'
  resources :categories, only: %i[show]
end
