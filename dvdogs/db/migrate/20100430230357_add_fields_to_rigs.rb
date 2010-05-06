class AddFieldsToRigs < ActiveRecord::Migration
  def self.up
    add_column :rigs, :color, :string
    add_column :rigs, :picture, :string
  end

  def self.down
    remove_column :rigs, :color
    remove_column :rigs, :picture
  end
end
