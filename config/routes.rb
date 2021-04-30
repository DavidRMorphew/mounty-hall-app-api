Rails.application.routes.draw do
  resources :games, only: [:create, :index]
  resources :users, only: [:create, :index] do
    resources :games, only: [:index]
  end
end
