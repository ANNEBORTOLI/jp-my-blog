# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  get "welcome/index"

  resources :articles, only: [:show]

  # Admin routes
  namespace :administrate do
    get "/", to: "dashboards#index"

    resources :articles do
      member do
        delete "destroy_cover_image"
      end
    end

    resources :categories do
    end
  end

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "welcome#index"
end
