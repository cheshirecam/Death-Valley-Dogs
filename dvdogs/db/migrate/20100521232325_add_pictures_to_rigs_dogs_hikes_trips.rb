class AddPicturesToRigsDogsHikesTrips < ActiveRecord::Migration
  def self.up
    add_column :rigs, :photo_file_name, :string
    add_column :rigs, :photo_content_type, :string
    add_column :rigs, :photo_file_size, :integer

    add_column :dogs, :photo_file_name, :string
    add_column :dogs, :photo_content_type, :string
    add_column :dogs, :photo_file_size, :integer

    add_column :hikes, :photo_file_name, :string
    add_column :hikes, :photo_content_type, :string
    add_column :hikes, :photo_file_size, :integer

    add_column :trips, :photo_file_name, :string
    add_column :trips, :photo_content_type, :string
    add_column :trips, :photo_file_size, :integer
  end
 
  def self.down
    remove_column :rigs, :photo_file_name
    remove_column :rigs, :photo_content_type
    remove_column :rigs, :photo_file_size
    
    remove_column :dogs, :photo_file_name
    remove_column :dogs, :photo_content_type
    remove_column :dogs, :photo_file_size

    remove_column :hikes, :photo_file_name
    remove_column :hikes, :photo_content_type
    remove_column :hikes, :photo_file_size

    remove_column :trips, :photo_file_name
    remove_column :trips, :photo_content_type
    remove_column :trips, :photo_file_size
    

  end
end
