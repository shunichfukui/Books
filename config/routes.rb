Rails.application.routes.draw do


  root to: "books#index"
  post 'books/messages'
  get 'books/amazon'
  resources :books do
    resources :messages,only: [:create, :new,:index,:show]
    resource :favorites, only: [:create, :destroy  ]
    collection do
      get 'search'
    end
  end
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations',
  }
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
  resource :users do
    collection do
      get 'favorites'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
