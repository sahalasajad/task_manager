Rails.application.routes.draw do
  root "sessions#new"

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  get "/register", to: "registrations#new"
  post "/register", to: "registrations#create"

  resources :tasks do
    member do
      patch :complete
    end
  end
end
