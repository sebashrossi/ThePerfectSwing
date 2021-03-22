Rails.application.routes.draw do
  get '/dashboard', to: 'pages#dashboard', as: :dashboard
  get '/peers', to: 'pages#peers', as: :peers
  devise_for :users
  devise_scope :user do
    root to: 'devise/sessions#new'
  end
  resources :trainings do
    resources :sections, only: [:new, :create]
    resources :training_users, only: :create
  end
 resources :sections, except: [:new, :create] do
    member do
      get :quiz
    end
  end
  resources :section_users, only: :update
end
