class CreateLatests < ActiveRecord::Migration
  def self.up
    create_table :latests do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :latests
  end
end
