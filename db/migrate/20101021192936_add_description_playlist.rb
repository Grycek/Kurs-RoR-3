class AddDescriptionPlaylist < ActiveRecord::Migration
  def self.up
    add_column :playlists, :description, :string
  end

  def self.down
    remove_column :playlists, :description
  end
end
