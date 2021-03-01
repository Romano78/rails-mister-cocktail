Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: %i[create]
    resources :reviews, only: %i[create]
  end
  resources :users, only: %i[show edit create]
  resources :doses, only: [:destroy]
end
