class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :name
      t.boolean :explicit
      t.references :album, null: false, foreign_key: true
      t.string :genre

      t.timestamps
    end
  end
end
