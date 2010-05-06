class AddFieldsToDogs < ActiveRecord::Migration
  def self.up
    add_column :dogs, :family, :string
  end

  def self.down
    remove_column :dogs, :family
  end
end
