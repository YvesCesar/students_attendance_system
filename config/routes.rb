# frozen_string_literal: true

Rails.application.routes.draw do
  resources :responsibles
  resources :students
  resources :school_classes do
    resources :frequency_registers
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")

  get "home", to: "home#index"

  root "home#index"
end
