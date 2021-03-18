Rails.application.routes.draw do
  get '/dashboard', to: 'pages#dashboard', as: :dashboard
  devise_for :users
  devise_scope :user do 
  root to: 'devise/sessions#new'
  end
  resources :trainings
  resources :sections do
    member do
      get :quiz
    end
  end
  resources :section_users, only: :update
end
