class AddBirthdateToDogs < ActiveRecord::Migration
  def self.up
    add_column :dogs, :birth_date, :date
  end

  def self.down
    remove_column :dogs, :birth_date
  end
end
