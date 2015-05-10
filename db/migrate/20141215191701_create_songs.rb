class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :amazon_uid, index: true
      t.string :name
      t.string :artist
      t.string :album
      t.string :pitch
      t.string :volume
      t.integer :fade_in_time
      t.integer :fade_out_time
      t.timestamps
    end
  end
end
