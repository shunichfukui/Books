Rails.application.routes.draw do

  get 'tags/index'
  get 'tags/search'
  root to: "books#index"
  post 'books/messages'
  resources :books do
    resources :messages,only: [:create, :new,:index,:show]
    resource :favorites, only: [:create, :destroy,:index  ]
    collection do
      get 'search'
    end
  end
  resources :tags, only: [:index, :new, :create] do
    collection do
      get 'search'
    end
  end
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
