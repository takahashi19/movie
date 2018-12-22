class Movie < ApplicationRecord
    has_many :reviews
    paginates_per 9
    validates :movie_name,{length:{maximum:30}}
    validates :synopsis,{length:{maximum:60}}
    validates :grossing,{length:{maximum:20}}
    
  #   #多くもつというメソッド１対Nを再現MOVIE、ID一つで複数のレビューDBを紐付ける。Sの複数形
  #   Movie.joins(:review)#Movieテーブルとreviewテーブルを連結
  # #SELECT movies.*FROM movies INNER JOIN reviews ON reviews.id = movies.id AND reviews.hyouka = `Movie`
  #   # @movies = Movie.includes(:review).order(hyouka: :desc)
  # # a = Movie.last.reviews.pluck(:hyouka).mean
  # #a./a.count
  
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
