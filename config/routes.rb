Rails.application.routes.draw do
  # apiルーティング
  namespace :api do
    resources :songs, only: [ :index, :create, :update, :destroy ], defaults: { format: 'json' }
  end
end
