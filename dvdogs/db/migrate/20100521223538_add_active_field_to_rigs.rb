class AddActiveFieldToRigs < ActiveRecord::Migration
  def self.up
    add_column :rigs, :active, :boolean
  end

  def self.down
    remove_column :rigs, :active
  end
end
