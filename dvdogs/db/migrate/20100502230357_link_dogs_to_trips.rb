class LinkDogsToTrips < ActiveRecord::Migration
  def self.up
    create_table :dogs_trips, :id => false do |t|
      t.references :dog, :trip
    end
  end

  def self.down
    drop_table :dogs_trips
  end
end
