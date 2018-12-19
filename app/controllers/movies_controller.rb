class MoviesController < ApplicationController
  def home
   #@ave = Review.group(:id).average(:hyouka)
   #Reviewテーブルのhyouka（☆の平均を全id分求める）
   
     @movies = Movie.all.each do |movie|
      movie.average = movie.average_score
      end
   
    @movies = @movies.sort_by {|movie| movie.average}
    #平均
   
    @movies = Movie.includes(:Review)#.order(star: :desc)
    #MovieテーブルとReviewを連結する
    
    @reviews = Review.page(params[:page]).per(9).order('star DESC')
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