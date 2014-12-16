class Playlist < ActiveRecord::Base
  belongs_to :songs_playlists
  has_many :songs, through: :songs_playlists
end
