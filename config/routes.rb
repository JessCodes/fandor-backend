Rails.application.routes.draw do
  namespace :api do
    resources :films, only: [:index, :show]
    resources :ratings, only: [:show, :destroy]
  end
end