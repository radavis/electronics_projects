Rails.application.routes.draw do
  root "home#show"
  resources :home, only: [:show]
  resources :projects, only: [:new, :create, :show]

  resources :projects, only: [] do
    resources :parts, only: [:new, :create]
  end
end
