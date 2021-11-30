Rails.application.routes.draw do
  resources :memberships, only: [:create]
  resources :clients, only: []
  resources :gyms, only: [:show, :destroy]

  post '/memberships', to: 'memebershps#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
