class CreateRigs < ActiveRecord::Migration
  def self.up
    create_table :rigs do |t|
      t.integer :year
      t.string :make
      t.string :model
      t.color :color
      t.string :engine
      t.string :tires
      t.string :name
      t.image_url :picture

      t.timestamps
    end
  end

  def self.down
    drop_table :rigs
  end
end
