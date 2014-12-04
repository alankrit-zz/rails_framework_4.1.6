Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    resources :doctors, only: [:index, :create, :show]
  end
end