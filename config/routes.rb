Rails.application.routes.draw do
  resources :bookings
  resources :restaurants do
    resources :tables
  end
  get '/admin', to:"home#admin"
  root to: "home#index"
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
