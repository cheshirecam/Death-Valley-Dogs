class AddFieldsToHikeStories < ActiveRecord::Migration
  def self.up
    add_column :hike_stories, :short_description, :text
    add_column :hike_stories, :content_type, :string
    add_column :hike_stories, :filename, :string
    add_column :hike_stories, :binary_data, :binary
  end

  def self.down
    remove_column :hike_stories, :short_description
    remove_column :hike_stories, :content_type
    remove_column :hike_stories, :filename
    remove_column :hike_stories, :binary_data
  end
end

