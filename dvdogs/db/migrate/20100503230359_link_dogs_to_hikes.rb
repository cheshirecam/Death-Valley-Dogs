class LinkDogsToHikes < ActiveRecord::Migration
  def self.up
    create_table :dogs_hikes, :id => false do |t|
      t.references :dog, :hike
    end
  end

  def self.down
    drop_table :dogs_hikes
  end
end
