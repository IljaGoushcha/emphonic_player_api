Playlist.delete_all
Song.delete_all

@song01 = Song.create(url: "Ameritz Spanish Instrumentals - Tango De Roxanne (In the Style of Moulin Rouge) [Karaoke Version].mp3", title: "Tango De Roxanne", author: "", album: "Ameritz Spanish Instrumentals", pitch: 0, volume: 100, fade_start_time: 0)
@song02 = Song.create(url: "Aventura - Obsesion.mp3", title: "Obsesion", author: "Aventura", album: "", pitch: 0, volume: 100, fade_start_time: 0)
@song03 = Song.create(url: "Carlos Gardel - Por Una Cabeza.mp3", title: "Por Una Cabeza", author: "Carlos Gardel", album: "", pitch: 0, volume: 100, fade_start_time: 0)
@song04 = Song.create(url: "Joe Arroyo - Rebelión.mp3", title: "Rebelion", author: "Joe Arroyo", album: "", pitch: 0, volume: 100, fade_start_time: 0)
@song05 = Song.create(url: "Romeo Santos Feat. Usher - Promise.mp3", title: "Promise", author: "Romeo Santos Feat. Usher", album: "", pitch: 0, volume: 100, fade_start_time: 0)
@song06 = Song.create(url: "Xtreme - Te Extraño (Bachata Version).mp3", title: "Promise", author: "Romeo Santos Feat. Usher", album: "", pitch: 0, volume: 100, fade_start_time: 0)

@playlist01 = Playlist.create(name: "Salsa")
@playlist02 = Playlist.create(name: "Bachata")
@playlist03 = Playlist.create(name: "Tango")

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
