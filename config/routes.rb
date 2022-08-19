Rails.application.routes.draw do
  get "users/new"
  devise_for :users
  resources :watchlists do
    resources :items
  end

  root to: "watchlists#index"
end
