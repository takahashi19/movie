class MoviesController < ApplicationController
  #  ApplicationControllerコントローラーを継承するための記述
  # ログインしてなくてもmoviesは使える仕様
  def home
     # @movies = Movie.joins(:reviews).select("movie.*,reviews.*").all
     #moviesテーブルとReviewsを連結する
    @reviews = Review.all
    
    @movies = Movie.page(params[:page]).per(9).order('star DESC')
     #ページング機能実装に必要な記述、9ページstar(星の平均値)順に並べ替え
     
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
    
    @reviews = @movie.reviews.order(created_at: :desc).limit(2)
    # とりあえず二件で取得
    
  end
end