Rails.application.routes.draw do
  get '.well-known/apple-app-site-association', to: 'apple#index'

  devise_for :users, controllers: { registrations: 'registrations' }
  resources :users

  root to: 'users#index'
end
