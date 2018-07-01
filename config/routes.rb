Rails.application.routes.draw do
  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :users, only: [:index, :show, :create]
        resources :user_events, only: [:index, :show, :create]
        resources :events, only: [:index, :show, :create]
        resources :song_entries, only: [:index, :show, :create]
      end
    end
  end
end
