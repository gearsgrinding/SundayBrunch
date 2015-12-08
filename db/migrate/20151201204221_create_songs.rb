class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.text :song
      t.text :uri
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :songs, [:user_id, :created_at]
  end
end
