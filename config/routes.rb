Rails.application.routes.draw do
  # get 'section/index'
  # get 'section/show'
  # get 'section/new'
  # get 'section/create'
  # get 'section/edit'
  # get 'section/update'
  # get 'section/destroy'
  # get 'training/index'
  # get 'training/show'
  # get 'training/new'
  # get 'training/create'
  # get 'training/edit'
  # get 'training/update'
  # get 'training/destroy'
  devise_for :users
  root to: 'pages#home'
  resources :trainings
  resources :sections
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
