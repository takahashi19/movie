class MoviesController < ApplicationController
  def home
    @cinema = Movie.all
    @reviews = Review.all
    #Reviws.averege("star",id:chinema_id)OR Mapper？
  end
  
  def index
    #ViewのFormで取得したパラメータをモデルに渡す
    @searchs = Movie.search(params[:search])
  end
end