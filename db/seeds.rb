Song.delete_all
Playlist.delete_all
PlaylistSong.delete_all
PlaylistFolder.delete_all

Song.create(amazon_uid: "0a4bcbff-5c9e-4291-a47e-7743351d4a3e", name: "Obsesion", artist: "Aventura", album: "14 x 14", pitch: 0, volume: 100, fade_in_time: 0, fade_out_time: 0)
Song.create(amazon_uid: "1ab81824-8def-40f3-a7ed-1525a8406a42", name: "Te Extrano", artist: "Xtreme", album: "Xtreme", pitch: 0, volume: 100, fade_in_time: 0, fade_out_time: 0)
Song.create(amazon_uid: "6596b75f-95d9-44de-a02f-5ab9f6c7f4f0", name: "Promise", artist: "Romeo Santos Feat. Usher", album: "Formula Vol.1", pitch: 0, volume: 100, fade_in_time: 0, fade_out_time: 0)
Song.create(amazon_uid: "a134e5cf-e09c-4c7f-af0b-07391833c5ad", name: "Rebelion", artist: "Joe Arroyo", album: "Grandes Hits: Joe Arroyo", pitch: 0, volume: 100, fade_in_time: 0, fade_out_time: 0)
Song.create(amazon_uid: "dc7bf240-1c4d-4a99-a339-4d166ce3ad31", name: "Por Una Cabeza", artist: "Carlos Gardel", album: "The Very Best", pitch: 0, volume: 100, fade_in_time: 0, fade_out_time: 0)
Song.create(amazon_uid: "f34ddbef-670e-4184-ae77-30a55e9762ae", name: "Tango De Roxanne (in the Style of Moulin Rouge) [Karaoke Version]", artist: "Ameritz Spanish Instrumentals", album: "Tango De Roxanne (in the Style of Moulin Rouge) [Karaoke Version] - Single", pitch: 0, volume: 100, fade_in_time: 0, fade_out_time: 0)

Playlist.create(name: "Salsa")
Playlist.create(name: "Bachata")
Playlist.create(name: "Tango")
Playlist.create(name: "Cha Cha")

PlaylistSong.create(playlist_id: 1, song_id: 4)
PlaylistSong.create(playlist_id: 2, song_id: 1)
PlaylistSong.create(playlist_id: 2, song_id: 2)
PlaylistSong.create(playlist_id: 2, song_id: 3)
PlaylistSong.create(playlist_id: 3, song_id: 5)
PlaylistSong.create(playlist_id: 3, song_id: 6)

PlaylistFolder.create(folder_number: 35, playlist_id: 2, page_number: 2)
PlaylistFolder.create(folder_number: 1, playlist_id: 2, page_number: 1)
PlaylistFolder.create(folder_number: 7, playlist_id: 3, page_number: 1)
PlaylistFolder.create(folder_number: 26, playlist_id: 2, page_number: 1)
PlaylistFolder.create(folder_number: 5, playlist_id: 4, page_number: 1)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
