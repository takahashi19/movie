class ApplicationController < ActionController::Base
  before_action :set_current_user
  # before_action：これを記入する事でactionが処理される際は必ず処理が実行される
  # 用いる際は必ずそのコントローラーのページにbefore_action :set_current_userのように記入する必要がある。
  # :set_current_userはこのアプリケーションコントローラー内でも必要なため同内に記述
  
  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end
  
  def authenticate_user
    # ログインしていない場合はログインページにリダイレクトさせるメソッド。これがないとIDの数をURLに入れれば書き込めてしまう
    if @current_user == nil
      flash[:notice] = "ログインが必要です"
      redirect_to("/login")
    end
  end
  
  def forbid_login_user
    # ログインしてるユーザーが入れないようにするメソッド
    if @current_user
      flash[:notice] = "すでにログインしています"
      redirect_to("/reviews")
    end
  end
  
end
