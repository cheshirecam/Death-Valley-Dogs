class ChangeHikesFieldType < ActiveRecord::Migration
  def self.up
    change_column :hikes, :album, :string
  end

  def self.down
    change_column :hikes, :album, :url
  end
end
