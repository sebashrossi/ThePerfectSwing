Rails.application.routes.draw do
  get '/dashboard', to: 'pages#dashboard', as: :dashboard
  devise_for :users
  root to: 'pages#home'
  resources :trainings
  resources :sections
end
