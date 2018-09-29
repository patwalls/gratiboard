Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'

  get '/:twitter', to: 'accounts#show'
end
