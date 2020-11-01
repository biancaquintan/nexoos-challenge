Rails.application.routes.draw do
  resources :credit_requests
  resources :telephones
  resources :addresses
  resources :requesters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'
end
