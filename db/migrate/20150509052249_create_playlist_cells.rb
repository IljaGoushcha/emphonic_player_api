class CreatePlaylistCells < ActiveRecord::Migration
  def change
    create_table :playlist_cells do |t|
      t.integer :cell_number
      t.references :playlist
      t.integer :page_number
    end
  end
end
