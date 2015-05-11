class CreatePlaylistCells < ActiveRecord::Migration
  def change
    create_table :playlist_cells do |t|
      t.integer :cell_number
      t.belongs_to :playlist
      t.integer :page_number
    end
  end
end
