class CreateGps < ActiveRecord::Migration
  def self.up
    create_table :gps do |t|
      t.string :make
      t.string :model
      t.string :description
      t.image_url :picture

      t.timestamps
    end
  end

  def self.down
    drop_table :gps
  end
end
