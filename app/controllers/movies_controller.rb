class MoviesController < ApplicationController
  def home
   #@ave = Review.group(:id).average(:hyouka)
   #Reviewテーブルのhyouka（☆の平均を全id分求める）
   
    @movies = Movie.includes(:Review).order(star: :desc)
    #star(星の平均値)順に並べ替え
    
    @reviews = Review.page(params[:page])
    @movies = Movie.page(params[:page])
    #ページング機能実装に必要な記述
  end
  
  def index
    #ViewのFormで取得したパラメータをモデルに渡す
    @searchs = Movie.search(params[:search])
  end
  
  def show
    @movie = Movie.find(params［:id)
  end
end