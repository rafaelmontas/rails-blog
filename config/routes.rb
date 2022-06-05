Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  get 'tags/:name', to: "tags#show"
  get 'categories/:name', to: "categories#show"
  # Defines the root path route ("/")
  root "posts#index"
  resources :posts
end
