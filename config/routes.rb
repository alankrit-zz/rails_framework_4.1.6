Rails.application.routes.draw do
  root "users#index"
  resources :users

  namespace :api, defaults: {format: 'json'} do
    resources :doctors, only: [:index, :create, :show]
  end
end
