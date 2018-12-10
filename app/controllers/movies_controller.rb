class MoviesController < ApplicationController
  def home
  @cinema = Movie.all
  @reviews = Reveiw.all
  
  end
end