Rails.application.routes.draw do
  resources :goals
  resources :budgets
  resources :transactions
  resources :accounts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
