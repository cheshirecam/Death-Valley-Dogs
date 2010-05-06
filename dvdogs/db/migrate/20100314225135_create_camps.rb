class CreateCamps < ActiveRecord::Migration
  def self.up
    create_table :camps do |t|
      t.string :name
      t.string :description
      t.integer :rating
      t.string :location

      t.timestamps
    end
  end

  def self.down
    drop_table :camps
  end
end
