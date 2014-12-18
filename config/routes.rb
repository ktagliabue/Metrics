Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    root 'users#show', as: :auth_root
  end

  get '/users/:user_id' => 'users#show'

  devise_scope :user do
    root 'devise/registrations#new'
  end

  namespace :api do
    namespace :v1 do
      resources :users do
        #resources :pageviews, only: [:create]
        #resources :clicks, only: [:create]
        post "pageviews" => "pageviews#create"
        get "pageviews" => "pageviews#index"
        post "clicks" => "clicks#create"
      end
    end
  end
end