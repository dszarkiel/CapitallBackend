Rails.application.routes.draw do
  resources :bills
  resources :goals
  resources :budgets
  resources :transactions
  resources :accounts
  resources :users

  namespace :api do
    namespace :v1 do
      post '/auth', to: 'auth#create'

      get '/current_user', to: 'auth#show'
    end
  end

end
