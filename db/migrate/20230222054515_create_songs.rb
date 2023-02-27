class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :airtist, null: false
      t.string :title, null:false

      t.timestamps
    end
  end
end
