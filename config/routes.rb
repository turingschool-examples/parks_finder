Rails.application.routes.draw do
  root "welcome#index"
  resources :parks, only: [:index]
end
