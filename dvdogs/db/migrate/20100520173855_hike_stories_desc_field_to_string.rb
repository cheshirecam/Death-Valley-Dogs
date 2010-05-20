class HikeStoriesDescFieldToString < ActiveRecord::Migration
  def self.up
    change_column :hike_stories, :short_description, :string
  end

  def self.down
    change_column :hike_stories, :short_description, :text
  end
end
