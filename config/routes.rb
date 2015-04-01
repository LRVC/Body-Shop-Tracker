Rails.application.routes.draw do
  root 'welcome#index'

  get 'sign-in', to: 'authentication#new'

  post 'sign-in', to: 'authentication#create'

  resources :users
end
