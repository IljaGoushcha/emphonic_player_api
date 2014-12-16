class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :url, index: true
      t.string :title
      t.string :author
      t.string :album
      t.string :pitch
      t.string :volume
      t.integer :fade_start_time
      t.integer :fade_stop_time
      t.timestamps
    end
  end
end
