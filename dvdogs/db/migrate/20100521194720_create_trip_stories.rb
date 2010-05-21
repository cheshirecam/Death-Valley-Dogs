class CreateTripStories < ActiveRecord::Migration
  def self.up
    create_table :trip_stories do |t|
      t.integer :trip_id
      t.text :description
      t.integer :dog_id
      t.string :short_description
      t.string :photo_file_name
      t.string :photo_content_type
      t.integer :photo_file_size

      t.timestamps
    end
  end

  def self.down
    drop_table :trip_stories
  end
end
