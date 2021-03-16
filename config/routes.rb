Rails.application.routes.draw do
  get 'section_users/new'
  get 'section_users/update'
  get 'section_users/show'
  get 'section_users/edit'
  get '/dashboard', to: 'pages#dashboard', as: :dashboard
  devise_for :users
  root to: 'pages#home'
  resources :trainings
  resources :sections
    resources :section_users, only: [:new, :edit, :show, :update]
end
