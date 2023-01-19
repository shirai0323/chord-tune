Rails.application.routes.draw do

  root 'top#index'

  get 'new', to: 'users#new'

  resources :users, only: %i[new create]
end
