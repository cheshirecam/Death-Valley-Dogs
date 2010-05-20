class HikeStoriesDescFieldLimit < ActiveRecord::Migration
  def self.up
    change_column :hike_stories, :short_description, :string, :limit => 150
  end

  def self.down
    change_column :hike_stories, :short_description, :string
  end
end
