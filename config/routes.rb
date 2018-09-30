Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'

  resources :users, only: [:show]

  get '/auth/:provider/callback', to: 'twitter_auth#create'

  post '/webhook', to: 'webhook#webhook', constraints: { format: 'json' }

  get '/:twitter', to: 'accounts#show'
  get '/:twitter/submit', to: 'accounts#submit_page'
  post '/:twitter/submit', to: 'accounts#submit'
end
