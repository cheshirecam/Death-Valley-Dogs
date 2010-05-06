class AddHikeStoriesFields < ActiveRecord::Migration
  def self.up
    add_column :hike_stories, :dog_id, :integer
  end

  def self.down
    remove_column :hike_stories, :dog_id
  end
end
