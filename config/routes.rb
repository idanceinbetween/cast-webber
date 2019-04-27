Rails.application.routes.draw do
  root to: "podcasts#index"

  #search routes
  get "/search", to: "searches#apple", as: "search"
  post "/search", to: "searches#results"

  # session routes
  get "/login_form", to: "sessions#login_form", as: "login_form"
  post "/login", to: "sessions#login", as: "login"
  delete "/logout", to: "sessions#logout", as: "logout"
  get "/profile", to: "users#profile", as: "profile"
  get "/profile/followships", to: "users#followshipslist", as: "followshipslist"

  # podcasts routes
  resources :podcasts, only: [:show, :index]
  post "/podcasts/:id/subscription", to: "podcasts#subscription", as: "subscription"
  get "/podcasts_query", to: "podcasts#query"

  #episode routes
  resources :episodes, only: [:show, :index]
  post "/episodes/:id/favouritisation", to: "episodes#favouritisation", as: "favouritisation"
  post "/episodes/:id/play", to: "episodes#play", as: "play"

  # user routes
  resources :users
  post "/users/:id/followship", to: "users#followship", as: "followship"

  #keyword routes
  resources :keywords, only: [:show, :index, :create]

  #notes routes
  resources :notes, only: [:create, :edit, :update, :destroy]

end
