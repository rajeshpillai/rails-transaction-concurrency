Rails.application.routes.draw do
  resources :transactions
  root "accounts#index"
  resources :accounts

  #get '/patients/:id', to: 'patients#show', as: 'patient'
  get "accounts/transactions/:account_id", to: 'accounts#activities', as: 'account_transactions'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
