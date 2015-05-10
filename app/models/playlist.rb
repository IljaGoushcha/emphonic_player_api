class Playlist < ActiveRecord::Base
  has_many :songs, :through => :playlists_songs
  belongs_to :playlist_cells
end
