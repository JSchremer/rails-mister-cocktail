Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#home' 

  resources :cocktails do
    resources :doses, only: [:create, :new]
  end
  resources :doses, only: [:destroy]
  resources :doses, only: [:edit, :update]
end
