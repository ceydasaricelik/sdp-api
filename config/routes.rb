# Rails.application.routes.draw do
#   # 👋 Root path - tarayıcıda localhost:3000 açıldığında çalışır
#   root to: "api/v1/hello#index"

#   scope :api, defaults: { format: :json } do
#     namespace :v1 do
#       # 🔑 Auth & Health
#       post 'auth/google', to: 'auth#google'
#       get  'health',      to: 'health#show'

#       # 👤 Users (manuel yollar)
#       get "users/index"
#       get "users/show"
#       get "users/create"
#       get "users/update"
#       get "users/destroy"

#       # 📨 Responses (manuel yollar)
#       get "responses/index"
#       get "responses/show"
#       get "responses/create"
#       get "responses/update"
#       get "responses/destroy"

#       # 🚀 Test endpoint
#       get "hello", to: "hello#index"

#       # 📊 CRUD endpoint'leri (Rails standardı)
#       resources :users
#       resources :scales do
#         resources :questions
#       end
#       resources :options
#       resources :responses
#     end
#   end
# end

Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get 'health', to: 'health#show'
      post 'auth/google', to: 'auth#google'

      resources :users
      resources :scales do
        resources :questions
      end
      resources :options
      resources :responses
    end
  end
end
