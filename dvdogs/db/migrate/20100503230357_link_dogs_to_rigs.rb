class LinkDogsToRigs < ActiveRecord::Migration
  def self.up
    add_column :rigs, :dog_id, :integer
  end

  def self.down
    remove_column :rigs, :dog_id
  end
end
