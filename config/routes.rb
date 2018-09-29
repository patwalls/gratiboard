Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'

  resources :users, only: [:show]

  post '/webhook', to: 'webhook#webhook', constraints: { format: 'json' }

  get '/:twitter', to: 'accounts#show'
end
