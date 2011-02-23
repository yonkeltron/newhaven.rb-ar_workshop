class Note < ActiveRecord::Base
  set_table_name 'supplemental_info'

  belongs_to :charge, :foreign_key => :transaction_reference
end
