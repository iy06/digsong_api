Rails.application.routes.draw do
  # apiルーティング
  namespace :api do
    resorces :songs, only: [:index, :create, :update, :destroy]
  end
end
