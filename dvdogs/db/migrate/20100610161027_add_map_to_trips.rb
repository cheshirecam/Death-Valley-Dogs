class AddMapToTrips < ActiveRecord::Migration
  def self.up
        add_column :trips, :map_points, :text
  end

  def self.down
        remove_column :trips, :map_points
  end
end
