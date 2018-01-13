Rails.application.routes.draw do
  root 'users#show'
  use_doorkeeper
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create] do
    scope module: :users do
      collection do
        resources :drink_logs, only: [:create]
      end
    end
  end
  resource :user, only: :show
end
