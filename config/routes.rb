Rails.application.routes.draw do
  devise_for :users
  root 'pageviews#index'

  namespace :api do
    namespace :v1 do
      resources :users do
        #resources :pageviews, only: [:create]
        #resources :clicks, only: [:create]
        post "pageviews" => "pageviews#create"
        post "clicks" => "clicks#create"
      end
    end
  end
end