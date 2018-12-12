Rails.application.routes.draw do
  get "movies/home" => "movies#home"
    
  post "likes/:reveiw_id/create" => "likes#create"
  post "likes/:reveiw_id/destroy" => "likes#destroy"

#ーーーーーーーーーこっからMovieーーーーーーーーーーー
  resources :movies
  #（仮のルーティングCRUD機能のルーティングはされる）

#ーーーーーーーーーこっからUserーーーーーーーーーーー

  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get "users/index" => "users#index"
  get "users/:id" => "users#show"
  post "login" => "users#login"
  post "logout" => "users#logout"
  get "login" => "users#login_form"
#   get "users/:id/likes" => "users#likes"

#-----------------こっからReviewーーーーーーーーーーー
  get "reveiws/index" => "reveiws#index"
  get "reveiws/new" => "reveiws#new"
  get "reveiws/:id" => "reveiws#show"
  post "reveiws/create" => "reveiws#create"
  get "reveiws/:id/edit" => "reveiws#edit"
  post "reveiws/:id/update" => "reveiws#update"
  post "reveiws/:id/destroy" => "reveiws#destroy"

#   get "/" => "home#top"
  get "about" => "home#about"
end
