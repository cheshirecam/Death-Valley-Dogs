class AddMapFieldsToHikes < ActiveRecord::Migration
  def self.up
        add_column :hikes, :map_points, :text
        add_column :hikes, :map_tracks, :text
  end

  def self.down
        remove_column :hikes, :map_points
        remove_column :hikes, :map_tracks
  end
end
