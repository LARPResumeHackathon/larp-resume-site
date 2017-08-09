Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"

  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all

  resources :campaigns
  resources :characters, except: :index
  resources :users
  resources :games
  resources :organizations
  resources :runs, except: :index
  resources :sessions, except: :index

end
