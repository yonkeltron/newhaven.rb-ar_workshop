class Charge < ActiveRecord::Base
  belongs_to :account
  has_one :delivery
  has_one :note, :foreign_key => :transaction_reference
end
