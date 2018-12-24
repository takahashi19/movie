Rails.application.routes.draw do
  root to: 'movies#home'
  # get "/" => "movies#home"root toと同じ記述
    
  post "likes/:review_id/create" => "likes#create"
  post "likes/:review_id/destroy" => "likes#destroy"

#ーーーーーーーーーこっからMovieーーーーーーーーーーー
  post "movies/:id",to: 'reviews#create'
  resources :movies
  #（ルーティングCRUD機能を軸としたルーティングがされる）

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
# resources:reviews RESTfulな書き方（index(例ユーザー一覧),show(例個別ユーザーP),new(例：新規登録画面),create（newを受けて生成）,edit（例：既存ユーザの編集）,update（editから更新）,destroy（削除） 7つisnceud viewは4つ）時間あったら変更（）
#toを使った書き方　get 'messages/:id', to: 'messages#show'
  get "reviews/index" => "reviews#index"
  get "reviews/:id" => "reviews#show"
  post "reviews/create" => "reviews#create"
  get "reviews/:id/edit" => "reviews#edit"
  post "reviews/:id/update" => "reviews#update"
  post "reviews/:id/destroy" => "reviews#destroy"

  get "about" => "home#about"
end
