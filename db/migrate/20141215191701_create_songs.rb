class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :url
      t.string :title
      t.string :author
      t.string :album
      t.string :pitch
      t.string :volume
      t.playlist :belongs_to
      t.timestamp
    end
  end
end
