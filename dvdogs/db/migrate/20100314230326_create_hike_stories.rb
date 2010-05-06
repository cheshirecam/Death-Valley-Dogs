class CreateHikeStories < ActiveRecord::Migration
  def self.up
    create_table :hike_stories do |t|
      t.integer :hike_id
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :hike_stories
  end
end
