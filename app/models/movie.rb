class Movie < ApplicationRecord
    validates :movie_name,{length:{maximum:30}}
    validates :synopsis,{length:{maximum:60}}
    validates :grossing,{length:{maximum:20}}
    belongs_to :reviews
    
  #検索に関する記述
  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Movie.where(['movie_name LIKE ?', "%#{search}%"])
    else
      Movie.all #全て表示。
    end
  end
end
