class AddStarToMovies < ActiveRecord::Migration[5.2]
  def change
     add_column :movies, :star, :float
  end
end
