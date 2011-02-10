class CreateDeliveries < ActiveRecord::Migration
  def self.up
    create_table :deliveries do |t|
      t.column :name, :string
      t.column :charge_id, :integer
      t.column :account_id, :integer
      t.column :time, :datetime
      t.column :latitude, :float
      t.column :longitude, :float

      t.timestamps
    end
  end

  def self.down
    drop_table :deliveries
  end
end
