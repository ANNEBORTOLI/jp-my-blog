# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  get "welcome/index"

  # Admin routes
  namespace :administrate do
    resources :articles do
      member do
        delete "destroy_cover_image"
      end
    end
  end

  get "/inicio", to: "welcome#index"

  # Defines the root path route ("/")
  root "welcome#index"
end
