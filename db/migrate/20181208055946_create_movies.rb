class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      #まだマイグレーションしてないしたらこのコメントアウト解除
      # t.integer: id は自動生成されるため自分では定義しない
      #t.データ型：カラム名で記述
      
      t.string :movie_name#(30字以内)
      t.string :synopsis#(60)映画の紹介文
      t.string :grossing#(20)興行収入
      t.string :image
      
      t.timestamps
      # t.timestamps によって created_at と updated_at カラムが追加される
    end
  end
end
