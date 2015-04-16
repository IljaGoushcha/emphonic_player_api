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

ActiveRecord::Schema.define(version: 20141215231648) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "playlists", force: true do |t|
    t.string   "name"
    t.integer  "cell"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "playlists_songs", id: false, force: true do |t|
    t.integer "song_id"
    t.integer "playlist_id"
  end

  create_table "songs", force: true do |t|
    t.string   "url"
    t.string   "title"
    t.string   "author"
    t.string   "album"
    t.string   "pitch"
    t.string   "volume"
    t.integer  "fade_start_time"
    t.integer  "fade_stop_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "songs", ["url"], name: "index_songs_on_url", using: :btree

end
