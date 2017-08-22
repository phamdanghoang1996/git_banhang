Rails.application.routes.draw do
  resources :homes, only: %i[index show], path: 'home' do
    resources :categories, only: %i[index show]
  end
end
