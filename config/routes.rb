Rails.application.routes.draw do
    root 'products#index'
    resources :products do
    resources :reviews, only: [:new, :create]
   
  end
end