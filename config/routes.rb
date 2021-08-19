Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users


  resources :offers, only: %i[index show new create update edit destroy] do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[index show update edit destroy] do
    resources :reviews, only: %i[new create index]
  end
  resources :reviews, only: %i[destroy edit update]
end
