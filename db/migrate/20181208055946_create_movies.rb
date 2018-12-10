class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      #まだマイグレーションしてないしたらこのコメントアウト解除
      # t.integer: id は自動生成されるため自分では定義しない
      #t.データ型：カラム名で記述
      t.string :movie_name#(30字以内)
      t.string :synopsis#(60)
      t.string :grossing#(20)
      t.string :image
      
      t.timestamps
      
    end
  end
end
