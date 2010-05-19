class AddPhotosToHikeStories < ActiveRecord::Migration
  def self.up
    add_column :hike_stories, :photo_file_name, :string
    add_column :hike_stories, :photo_content_type, :string
    add_column :hike_stories, :photo_file_size, :integer

    remove_column :hike_stories, :image
    remove_column :hike_stories, :content_type
    remove_column :hike_stories, :filename
    remove_column :hike_stories, :binary_data
  end
 
  def self.down
    remove_column :hike_stories, :photo_file_name
    remove_column :hike_stories, :photo_content_type
    remove_column :hike_stories, :photo_file_size
    
    
    add_column :hike_stories, :image, :string
    add_column :hike_stories, :content_type, :string
    add_column :hike_stories, :filename, :string
    add_column :hike_stories, :binary_data, :binary

  end
end
