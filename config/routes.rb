Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "uikit", to: "pages#uikit"

  resources :users, only: [ :edit, :update ]

  resources :hashtags, only: [ :index, :show ] do
    resources :bookmarks, only: [ :index, :create, :destroy ]
  end
end
