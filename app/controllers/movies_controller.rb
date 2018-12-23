class MoviesController < ApplicationController
  def home
   #@ave = Review.group(:id).average(:hyouka)
   #Reviewテーブルのhyouka（☆の平均を全id分求める）

    @movies = Movie.joins(:reviews).select("movie.*,reviews.*").all
     #moviesテーブルとReviewsを連結する
    
    @reviews = Review.all
    
     #@reviews = Review.page(params[:page]).per(9).order('star DESC')
     @movies = Movie.page(params[:page]).per(9).order('star DESC')
     #ページング機能実装に必要な記述、star(星の平均値)順に並べ替え
     
    @newss = Whatsnew.order(updated_at: :desc).limit(1)
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

    @reviews = Review.order(created_at: :desc).limit(2)
    # /messages/:id→/messages/2が→params[:id] = 2
    
  end
end