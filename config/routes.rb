Rails.application.routes.draw do

  get 'messages/new'
  root to: "book#index"
  resources :book do
    resources :message
  end

  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
