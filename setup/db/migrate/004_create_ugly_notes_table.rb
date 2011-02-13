class CreateUglyNotesTable < ActiveRecord::Migration

  def self.up
    create_table :supplemental_info do |t|
      t.column :text, :text
      t.column :transaction_reference, :integer

      t.timestamps
    end
  end

  def self.down
    drop_table :supplemental_info
  end
end
