class CreateCharges < ActiveRecord::Migration
  def self.up
    create_table :charges do |t|
      t.column :credits, :integer
      t.column :name, :string
      t.column :account_id, :integer
      
      t.timestamps
    end
  end

  def self.down
    drop_table :charges
  end
end
