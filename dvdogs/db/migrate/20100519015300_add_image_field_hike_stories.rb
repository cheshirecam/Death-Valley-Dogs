class AddImageFieldHikeStories < ActiveRecord::Migration
  def self.up
    add_column :hike_stories, :image, :string
  end

  def self.down
    remove_column :hike_stories, :image
  end
end

