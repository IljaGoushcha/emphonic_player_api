class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.references :song
      t.references :playlist
    end
  end
end
