Rails.application.routes.draw do
  root to: 'home#index'

  resources :lists do
    resources :items
  end
end
