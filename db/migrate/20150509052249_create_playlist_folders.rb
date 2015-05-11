class CreatePlaylistFolders < ActiveRecord::Migration
  def change
    create_table :playlist_folders do |t|
      t.integer :folder_number
      t.belongs_to :playlist
      t.integer :page_number
    end
  end
end
