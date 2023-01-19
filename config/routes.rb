Rails.application.routes.draw do

  get 'new', to: 'users#new'

  resources :users, only: %i[new create]
end
