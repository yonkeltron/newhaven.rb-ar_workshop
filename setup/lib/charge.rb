class Charge < ActiveRecord::Base

  belongs_to :account
  has_many :deliveries

end
