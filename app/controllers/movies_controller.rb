class MoviesController < ApplicationController
  def home
   #@ave = Review.group(:id).average(:hyouka)
   #Reviewテーブルのhyouka（☆の平均を全id分求める）
   
    @movies = Movie.includes(:Review).order(star: :desc)
    #star(星の平均値)順に並べ替え
    
    @reviews = Review.page(params[:page])
    @movies = Movie.page(params[:page])
    #ページング機能実装に必要な記述
    
    @news = Whatsnew.order(updated_at: :desc).limit(1)
    # 新着情報を表示
    #更新日時で降順に並び替えて一番上のだけ取ってくる記述
  end
  
  def index
    #ViewのFormで取得したパラメータをモデルに渡す
    @searchs = Movie.search(params[:search])
  end
  
  def show
    @movie = Movie.find_by(id: params[:id])
    #find = idを指定して検索。映画のIDを受け取る
    @review = Review.new
    @reviews = Review.find_by(id:4)#紐付けされた映画のレビューを取得（仮でid4を取得）
    @reviews = Review.order(created_at: :desc).limit(2)
    # /messages/:id→/messages/2が→params[:id] = 2
    
    @c = User.includes(:Review).order(hyouka: :desc)
    
  end
end
