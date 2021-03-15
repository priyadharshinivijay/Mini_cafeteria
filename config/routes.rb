Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/",to:"home#index"
  resources :users
  resources :menus
  resources :orders
  resources :orderitems
  resources :cartitems
  get "/signin",to:"sessions#new",as: :new_session_page
  post "/signin",to:"sessions#signin",as: :sessions
  delete "/signout" => "sessions#destroy", as: :destroy_session
  post "/signup",to:"users#create",as: :signup
  get "/customers",to:"customers#index"
  get "/editmenus",to:"menus#change_menu",as: :update_menu
  get "/view_menus",to:"items#index",as: :view_items

  
end
