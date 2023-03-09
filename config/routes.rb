Rails.application.routes.draw do
  # get 'bookmarks/create'
  # get 'bookmarks/destroy'
  # get 'movies/index'
  # get 'movies/show'
  # get 'lists/index'
  # get 'lists/show'
  # get 'lists/new'
  # get 'lists/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :movies
  root to: 'lists#index'

  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: [:destroy]
end
