Rails.application.routes.draw do
  root 'pageviews#index'

  namespace :api do
    namespace :v1 do
      resources :pageviews, only: [:create]
      resources :clicks, only: [:create]
    end
  end
end
