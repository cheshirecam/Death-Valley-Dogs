class CreateDogs < ActiveRecord::Migration
  def self.up
    create_table :dogs do |t|
      t.integer :id
      t.string :name
      t.string :ham
      t.string :profile
      t.boolean :active

      t.timestamps
    end
  end

  def self.down
    drop_table :dogs
  end
end
