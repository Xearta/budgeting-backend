Rails.application.routes.draw do

  # Namespaced to be able to fetch to:
  # http://localhost:3000/api/v1/accounts
  namespace :api do
    namespace :v1 do
      resources :accounts do
        resources :transactions
      end
    end
  end
end
