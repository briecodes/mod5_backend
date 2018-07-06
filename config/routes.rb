Rails.application.routes.draw do
  post "/sessions", to: "sessions#create", as: "sessions"
  post "/logout", to: "sessions#destroy", as: "log_out"
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create, :update]
      resources :user_events, only: [:index, :show, :create, :delete, :destroy]
      resources :events, only: [:index, :show, :create, :update, :delete, :destroy]
      resources :song_entries, only: [:index, :show, :create, :update, :delete, :destroy]
    end
  end
end
