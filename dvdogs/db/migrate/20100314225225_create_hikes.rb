class CreateHikes < ActiveRecord::Migration
  def self.up
    create_table :hikes do |t|
      t.string :name
      t.date :date
      t.url :album

      t.timestamps
    end
  end

  def self.down
    drop_table :hikes
  end
end
