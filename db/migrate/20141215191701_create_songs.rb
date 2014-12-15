class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :url, index: true
      t.string :title
      t.string :author
      t.string :album
      t.integer :pitch
      t.integer :volume
      t.integer :fade_start_time
      t.integer :fade_stop_time
      t.playlist :belongs_to
      t.timestamp
    end
  end
end
