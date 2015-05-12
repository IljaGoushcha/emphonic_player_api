class Playlist < ActiveRecord::Base
  has_many :playlist_songs
  has_many :songs, through: :playlist_songs
  has_many :playlist_folders

  def self.order_and_fill_playlist_songs(playlist_id)
    ordered_playlist_songs = PlaylistSong.where(playlist_id: playlist_id.to_s).order(cell_number: :asc)

    binding.pry

    last_cell_number = ordered_playlist_songs.last.cell_number
    ordered_songs = ordered_playlist_songs.map do |playlist_song|
      Song.find(playlist_song.song_id)
    end

    max_number_cells = (1+last_cell_number/15)*15
    filled_ordered_songs_array = Array.new(max_number_cells, {
        amazon_uid: nil,
        name: nil,
        artist: nil,
        album: nil,
        pitch: 0,
        volume: 100,
        fade_in_time: 0,
        fade_out_time: nil
      })

    i = 0
    while i < ordered_playlist_songs.length do
      filled_ordered_songs_array[ordered_playlist_songs[i].cell_number-1] = ordered_songs[i]
      i +=1
    end
    my_playlist = Playlist.find(playlist_id)

    new_playlist = {
      id: my_playlist.id,
      name: my_playlist.name,
      created_at: my_playlist.created_at,
      updated_at: my_playlist.updated_at,
      songs: filled_ordered_songs_array
    }

    return new_playlist
  end
end
