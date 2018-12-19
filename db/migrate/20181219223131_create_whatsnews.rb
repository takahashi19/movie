class CreateWhatsnews < ActiveRecord::Migration[5.2]
  def change
    create_table :whatsnews do |t|
      t.string :news

      t.timestamps
    end
  end
end
