Rails.application.routes.draw do
  get '/dashboard', to: 'pages#dashboard', as: :dashboard
  devise_for :users
  root to: 'sessions#new'
  resources :trainings
  resources :sections do
    member do
      get :quiz
    end
  end
  resources :section_users, only: :update
end
