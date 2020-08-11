Rails.application.routes.draw do

  root to: "books#index"
  resources :books do
    resources :messages,only: [:create, :new,:index,:show]
    
  end

  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
