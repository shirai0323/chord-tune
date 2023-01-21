class CreateMusicGenres < ActiveRecord::Migration[7.0]
  def change
    create_table :music_genres do |t|
      t.references :post, foreign_key: true
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
