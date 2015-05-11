class PlaylistCell < ActiveRecord::Base
  belongs_to :playlists
  has_one :playlist
end
