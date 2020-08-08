Rails.application.routes.draw do

  # Namespaced to be able to fetch to:
  # http://localhost:3000/api/v1/transactions or .../accounts
  namespace :api do
    namespace :v1 do
      resources :transactions
      resources :accounts
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
