Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/lists', to: 'lists#index'
  resources :lists do
    resources :bookmarks # shallow: true
  end
end
  #get '/bookmarks', to: 'bookmarks#new'
