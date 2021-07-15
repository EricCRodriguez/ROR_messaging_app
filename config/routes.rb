Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
   devise_for :users

  resources :conversations do
    resources :messages
  end

  root to: 'main#index'
end