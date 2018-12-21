class Movie < ApplicationRecord
    paginates_per 9
    validates :movie_name,{length:{maximum:30}}
    validates :synopsis,{length:{maximum:60}}
    validates :grossing,{length:{maximum:20}}
    has_many :reviews
    attr_accessor :average
    
  def average_score
    self.reviews.sum(:hyouka) / 30 #self.reviews.length
  end
  # ↑ attr_accessorで一時的に平均スコアを入れる
    
 #検索に関する記述
  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Movie.where(['movie_name LIKE ?', "%#{search}%"])
    else
      Movie.all #全て表示。
    end
  end

end
