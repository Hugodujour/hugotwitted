Rails.application.routes.draw do
  resources :gossips
 
 get "about-us", to: "about#index", as: :about

 get "password", to: "passwords#edit", as: :edit_password
 patch "password", to: "passwords#update"

 get "sign_up", to: "registrations#new"
 post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
 post "sign_in", to: "sessions#create"

 delete "logout", to: "sessions#destroy"

 root to: "gossips#index"

 get "gossips", to: "gossips#index"

 
end
