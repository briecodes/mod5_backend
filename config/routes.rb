Rails.application.routes.draw do
  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :users, only: [:index, :show, :create, :update]
        resources :user_events, only: [:index, :show, :create, :delete, :destroy]
        resources :events, only: [:index, :show, :create, :update, :delete, :destroy]
        resources :song_entries, only: [:index, :show, :create, :update, :delete, :destroy]
      end
    end
  end
end
