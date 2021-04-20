Rails.application.routes.draw do
  resources :games
  resources :users do
    resources :games, only: [:index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
