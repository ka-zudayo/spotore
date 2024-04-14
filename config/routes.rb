Rails.application.routes.draw do
    root 'products#index'
    resources :products do
    resources :reviews, only: [:new, :create]
    resources :videos, only: [:index, :new, :create, :show]
  end
end