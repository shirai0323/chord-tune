class AddTrackIdToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :track_id, :string
  end
end
