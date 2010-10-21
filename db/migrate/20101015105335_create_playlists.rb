class CreatePlaylists < ActiveRecord::Migration
  def self.up
    create_table :playlists do |t|
      t.integer :day
      t.string :creator
      t.string :mood

      t.timestamps
    end
  end

  def self.down
    drop_table :playlists
  end
end
