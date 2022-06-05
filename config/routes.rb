Rails.application.routes.draw do
  get 'tags/:name', to: "tags#show"
  get 'categories/:name', to: "categories#show"
  # Defines the root path route ("/")
  root "posts#index"
  resources :posts
end
