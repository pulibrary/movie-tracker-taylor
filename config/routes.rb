Rails.application.routes.draw do
  devise_for :users
  resources :watchlists do
    resources :items
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "watchlists#index"
end
