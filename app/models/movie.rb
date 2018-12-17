class Movie < ApplicationRecord
    paginates_per 10
    validates :movie_name,{length:{maximum:30}}
    validates :synopsis,{length:{maximum:60}}
    validates :grossing,{length:{maximum:20}}
    belongs_to :reviews
     Movie.joins(:review)#Movieテーブルとreviewテーブルを連結
   #SELECT movies.*FROM movies INNER JOIN reviews ON reviews.id = movies.id AND reviews.hyouka = `Movie`
end
