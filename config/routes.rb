Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"
  resources :campaigns
  resources :characters, except: :index
  resources :users
  resources :games
  resources :organizations
end
