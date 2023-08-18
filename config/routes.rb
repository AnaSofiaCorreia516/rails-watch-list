# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'bookmarks/movies:references'
  # get 'bookmarks/lists:references'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'lists#index'
  resources :lists, only: [:index, :new, :show] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
