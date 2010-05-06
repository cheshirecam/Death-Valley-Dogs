class LinkHikesToTrips < ActiveRecord::Migration
  def self.up
    add_column :hikes, :trip_id, :integer
  end

  def self.down
    remove_column :hikes, :trip_id
  end
end
