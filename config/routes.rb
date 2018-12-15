Rails.application.routes.draw do
  get "/" => "movies#home"
    
  post "likes/:review_id/create" => "likes#create"
  post "likes/:review_id/destroy" => "likes#destroy"

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
   get "users/:id/likes" => "users#likes"

#-----------------こっからReviewーーーーーーーーーーー
  get "reviews/index" => "reviews#index"
  get "reviews/new" => "reviews#new"
  get "reviews/:id" => "reviews#show"
  post "reviews/create" => "reviews#create"
  get "reviews/:id/edit" => "reviews#edit"
  post "reviews/:id/update" => "reviews#update"
  post "reviews/:id/destroy" => "reviews#destroy"

#   get "/" => "home#top"
  get "about" => "home#about"
end
