Rails.application.routes.draw do
  root to: 'pages#home'
  
  devise_for :users

  resources :users, only: [] do
    resources :pets, only: [:new, :create, :edit, :update]
  end

  resources :pets, only: [:delete]

  get "/account", to: "pages#account"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
