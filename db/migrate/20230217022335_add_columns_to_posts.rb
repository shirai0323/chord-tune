class AddColumnsToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :airtist, :string
    add_column :posts, :genre, :string
  end
end
