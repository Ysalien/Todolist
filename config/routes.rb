Rails.application.routes.draw do
  root 'email#index'
  get '/email/:id', to: 'email#show', as: :email
  delete '/email/:id', to: 'email#destroy'
  devise_for :users
  #root "home#index"
  resources :tasks, except: [:show]
end
