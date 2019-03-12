Rails.application.routes.draw do
  root to: 'movies#home'
  # get "/",to: "movies#home"root toと同じ記述
  post "likes/:review_id/create",to: "likes#create"
  post "likes/:review_id/destroy",to: "likes#destroy"
#ーーーーーーーーーこっからMovieーーーーーーーーーーー
  post "movies/:id",to: 'reviews#create'
  resources :movies
#ーーーーーーーーーこっからUserーーーーーーーーーーー
  post "users/:id/update",to: "users#update"
  get "users/:id/edit",to: "users#edit"
  post "users/create",to: "users#create"
  get "signup",to: "users#new"
  get "users/index",to: "users#index"
  get "users/:id",to: "users#show"
  post "login",to: "users#login"
  # 新規登録：フォームの値を送信するためpost:form_tagメソッドがデフォルトでpostを探す
  get "login",to: "users#login_form"
  # 新規登録：get→link_toメソッドはデフォルトでgetを探す（他所からきたやつ）
  post "logout",to: "users#logout"
  # session変数を変更するためpostで記入
  get "users/:id/likes",to: "users#likes"
#-----------------こっからReviewーーーーーーーーーーー
# resources:reviews RESTfulな書き方（index(例ユーザー一覧),show(例個別ユーザーP),new(例：新規登録画面),create（newを受けて生成）,edit（例：既存ユーザの編集）,update（editから更新）,destroy（削除） 7つisnceud viewは4つ）時間あったら変更（）
#toを使った書き方　get 'messages/:id', to: 'messages#show'
  resources:reviews
  # get "reviews/index",to: "reviews#index"
  post "reviews/create",to: "reviews#create"
  # post "reviews/:id/update",to: "reviews#update"
  # post "reviews/:id/destroy",to: "reviews#destroy"
  get "about",to: "home#about"
end
