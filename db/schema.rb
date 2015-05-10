# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150509052803) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "playlist_cells", force: true do |t|
    t.integer "cell_number"
    t.integer "playlist_id"
    t.integer "page_number"
  end

  create_table "playlist_songs", force: true do |t|
    t.integer "playlist_id"
    t.integer "song_id"
  end

  add_index "playlist_songs", ["playlist_id"], name: "index_playlist_songs_on_playlist_id", using: :btree
  add_index "playlist_songs", ["song_id"], name: "index_playlist_songs_on_song_id", using: :btree

  create_table "playlists", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "songs", force: true do |t|
    t.string   "amazon_uid"
    t.string   "name"
    t.string   "artist"
    t.string   "album"
    t.integer  "pitch"
    t.integer  "volume"
    t.integer  "fade_in_time"
    t.integer  "fade_out_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "songs", ["amazon_uid"], name: "index_songs_on_amazon_uid", using: :btree

end
