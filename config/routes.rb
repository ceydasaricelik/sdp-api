Rails.application.routes.draw do
  # 👋 Root path - tarayıcıda localhost:3000 açıldığında çalışır
  root to: "api/v1/hello#index"

  namespace :api do
    namespace :v1 do
      get "users/index"
      get "users/show"
      get "users/create"
      get "users/update"
      get "users/destroy"
      get "responses/index"
      get "responses/show"
      get "responses/create"
      get "responses/update"
      get "responses/destroy"
      # 🚀 Test endpoint
      get "hello", to: "hello#index"

      # 📊 CRUD endpoint'leri
      resources :scales
      resources :questions
      resources :options
      resources :responses
      resources :users
    end
  end
end
