class MoviesController < ApplicationController
  def home
  @cinema = Movie.all
  @reviews = Review.all
  #Reviws.averege("star",id:chinema_id)OR Mapper？
  
  end
end