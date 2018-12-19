class Movie < ApplicationRecord
    paginates_per 9
    validates :movie_name,{length:{maximum:30}}
    validates :synopsis,{length:{maximum:60}}
    validates :grossing,{length:{maximum:20}}
    has_many :reviews
    #多くもつというメソッド１対Nを再現MOVIE、ID一つで複数のレビューDBを紐付ける
     Movie.joins(:review)#Movieテーブルとreviewテーブルを連結
   #SELECT movies.*FROM movies INNER JOIN reviews ON reviews.id = movies.id AND reviews.hyouka = `Movie`
    
  #検索に関する記述
  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Movie.where(['movie_name LIKE ?', "%#{search}%"])
    else
      Movie.all #全て表示。
    end
  end
  
  def user
    return User.find_by(id: self.user_id)
  end

end
