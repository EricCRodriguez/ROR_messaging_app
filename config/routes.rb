Rails.application.routes.draw do
  namespace :api do
    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

  devise_for :models
   devise_for :users

  resources :conversations do
    resources :messages
  end

  root to: 'main#index'
  end
end