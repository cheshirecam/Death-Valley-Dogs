class ChangeTextareaType < ActiveRecord::Migration
  def self.up
    change_column :hike_stories, :description, :text
  end

  def self.down
    change_column :hike_stories, :description, :string
  end
end
