class CreateMusicGenres < ActiveRecord::Migration[7.0]
  def change
    create_table :music_genres do |t|

      t.timestamps
    end
  end
end
