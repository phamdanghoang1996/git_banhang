Rails.application.routes.draw do
  devise_for :users
  match '/404', to: 'error#not_found', :via=>:all
  resources :buyproducts, only: %i[index create]
  resources :homes, only: %i[index show], path: 'home'
  resources :categories, only: %i[show]
end
