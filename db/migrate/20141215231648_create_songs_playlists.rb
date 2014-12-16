class CreateSongsPlaylists < ActiveRecord::Migration
  def change
    create_table :songs_playlists do |t|
      t.references :songs
      t.references :playlists
    end
  end
end
