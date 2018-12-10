class CreateReveiws < ActiveRecord::Migration[5.2]
  def change
    create_table :reveiws do |t|
      t.text :content
      t.integer :hyouka
      t.integer :user_id
      t.integer :chinema_id

      t.timestamps
    end
  end
end
