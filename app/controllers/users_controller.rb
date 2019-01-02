class UsersController < ApplicationController
    #  ApplicationControllerコントローラーを継承するための記述
  before_action :authenticate_user, {only: [:index, :show, :edit, :update]}
    # before_action：これを記入する事でactionが処理される際は必ず処理が実行される
    # {only: [:edit, :update, :destroy]}の記述は特定のアクションだけを指定する時に用いる。中は配列の形式で書く
  before_action :forbid_login_user, {only: [:new, :create, :login_form, :login]}
    # [:new, :create, :login_form, :login］はログイン中のユーザーには使えなくさせる
  before_action :ensure_correct_user, {only: [:edit, :update]}
    # ensure_correct_userメソッド：（正しいか確かめるの意味）更新と編集時にユーザーが正しくない場合にはフラッシュでリダイレクトさせる
  def index
    @users = User.all
   
  end
  
  def show
    @user = User.find_by(id: params[:id])
    @movie = Movie.all
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      image_name: "default_user.jpg",
      password: params[:password]
    )
    #params=Railsで送られてきた値を受け取るためのメソッド.getのクエリパラメータとPostでformを使って送信されるデータの2つを取れる
    # imageに文字列を初期値として設定し初期画像を生成する。pramsで送られた情報（name）をキャッチする
    if @user.save
      session[:user_id] = @user.id
      # 登録に成功した場合にはログイン状態にすぐする仕様
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/users/#{@user.id}")
    else
      render("users/new")
    end
  end
  
  def edit
    @user = User.find_by(id: params[:id])
  end
  
  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    
    if params[:image]
      # image（type="file"）で画像を取得しているかを判断
      @user.image_name = "#{@user.id}.jpg"
      #image_nameにjpg名を格納
      image = params[:image]
      File.binwrite("public/user_images/#{@user.image_name}", image.read)
      # File.binwrite　fileクラスのbinwriteを使用して書き込み（rails特有ぽい。javaはFile.write）
      # ULRは書き込み先
      #readメソッド：image.read（ファイルの中身）で画像のデータを取得
    end
    
    if @user.save
      flash[:notice] = "ユーザー情報を編集しました"
      redirect_to("/users/#{@user.id}")
    else
      render("users/edit")
    end
  end
  
  def login_form
  end
  
  def login
    @user = User.find_by(email: params[:email])
    #emailが一致するユーザを取得する

    if @user && @user.authenticate(params[:password])
      # has_secure_passwordメソッドを有効にするとauthenticate（アファンタキュート：認証）メソッド使えるようになる。
      # authenticateメソッド：渡された引数を暗号化してpassword_digest(ダイジェスト)の暗号化と一致してるか調べる
      session[:user_id] = @user.id
      # ページを移動してもユーザー情報を保持する変数、sessionに代入された値は、ブラウザ(InternetExplorer, GoogleChrome等)に保存され逐一railsに送信してくれる。
      # session[:キー名]＝値　特定したユーザーの情報を保持できる
      flash[:notice] = "ログインしました"
      redirect_to("/reviews")
    else
      # 一致していない場合はエラー文を変数にしてログインフォームに返す
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @email = params[:email]
      @password = params[:password]
      render("users/login_form")
    end
  end
  
  def logout
    session[:user_id] = nil
    # sessionにnilを入れる事でログイン状態じゃなくする。postによってsessionの値は変更可能
    flash[:notice] = "ログアウトしました"
    redirect_to("/login")
  end
  
  def likes
    @user = User.find_by(id: params[:id])
    @likes = Like.where(user_id: @user.id)
    @movie = Movie.all
  end
  
  def ensure_correct_user
    if @current_user.id != params[:id].to_i
      # prams取得のidが文字列のためto_iで数値変換
      flash[:notice] = "権限がありません"
      redirect_to("/reviews")
    end
  end
  
end
