class CreateAccounts < ActiveRecord::Migration
  def self.up
    create_table :accounts do |t|
      t.column :name, :string
      t.column :phone_number, :string
      t.column :employees, :integer
      t.column :uuid, :string
      
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
