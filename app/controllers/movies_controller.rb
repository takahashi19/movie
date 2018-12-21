class MoviesController < ApplicationController
  def home
      
     @movies = Movie.joins(:reviews).select("movie.*,reviews.*").all
     #moviesテーブルとReviewsを連結する
      
    #  movie = Movie.last
# 　　 reviews_hyouka = movie.reviews.pluck(:hyouka)
# 　　 @ave = reviews_hyouka.sum.to_f / reviews_hyouka.count
  
     #@reviews = Review.page(params[:page]).per(9).order('star DESC')
     @movies = Movie.page(params[:page]).per(9).order('star DESC')
     #ページング機能実装に必要な記述、star(星の平均値)順に並べ替え
  end
  
  
  def index
    #ViewのFormで取得したパラメータをモデルに渡す
    @searchs = Movie.search(params[:search])
  end
  
  def show
    @movie = Movie.find(params［:id)
  end
end