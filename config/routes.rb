Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "static#home", as: "root"
  post "/users", to: "users#create"
  get "/treasure-map", to: "static#map"
  get "/dashboard", to: "static#dashboard", as: "dashboard"
  post "/login", to: "sessions#create"
  get "/decoy-map", to: "static#decoy"
  get "/real-map", to: "static#map"
  post "/sessions/:id", to: "sessions#destroy"
end
