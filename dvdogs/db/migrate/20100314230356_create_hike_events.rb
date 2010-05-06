class CreateHikeEvents < ActiveRecord::Migration
  def self.up
    create_table :hike_events do |t|
      t.integer :hike_id
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :hike_events
  end
end
