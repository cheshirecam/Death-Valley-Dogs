class AddDogKnownForField < ActiveRecord::Migration
  def self.up
        add_column :dogs, :known_for, :text
  end

  def self.down
        remove_column :dogs, :known_for, :text
  end
end
