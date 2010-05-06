class AddHikeFields < ActiveRecord::Migration
  def self.up
    add_column :hikes, :album, :url
  end

  def self.down
    remove_column :hikes, :album
  end
end
