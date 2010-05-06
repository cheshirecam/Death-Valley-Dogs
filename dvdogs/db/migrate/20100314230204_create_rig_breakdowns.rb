class CreateRigBreakdowns < ActiveRecord::Migration
  def self.up
    create_table :rig_breakdowns do |t|
      t.integer :rig_id
      t.string :location
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :rig_breakdowns
  end
end
