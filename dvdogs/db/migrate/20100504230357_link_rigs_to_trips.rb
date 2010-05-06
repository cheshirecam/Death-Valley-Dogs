class LinkRigsToTrips < ActiveRecord::Migration
  def self.up
    create_table :rigs_trips, :id => false do |t|
      t.references :rig, :trip
    end
  end

  def self.down
    drop_table :rigs_trips
  end
end
