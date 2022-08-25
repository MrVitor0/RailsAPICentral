Rails.application.routes.draw do
  resources :users
  root "users#index"

  get "search" => "users#search"
  get "register" => "users#new"
  
  get "find" => "users#find"
end
