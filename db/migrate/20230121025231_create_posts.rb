class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.text :body
      t.string :song_title
      t.integer :capotast

      t.timestamps
    end
  end
end
