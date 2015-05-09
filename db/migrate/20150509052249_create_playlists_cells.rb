class CreatePlaylistsCells < ActiveRecord::Migration
  def change
    create_table :playlists_cells do |t|
      t.integer :cell_number
      t.reference :playlist_id
      t.integer :page_number
    end
  end
end
