class AddSpotifyUriToSongs < ActiveRecord::Migration[7.0]
  def change
    add_column :songs, :spotify_uri, :string
  end
end
