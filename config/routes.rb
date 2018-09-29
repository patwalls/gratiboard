Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'

  resources :users, only: [:show]

  get '/:twitter', to: 'accounts#show'
end
