class CreateRigUpgrades < ActiveRecord::Migration
  def self.up
    create_table :rig_upgrades do |t|
      t.integer :rig_id
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :rig_upgrades
  end
end
