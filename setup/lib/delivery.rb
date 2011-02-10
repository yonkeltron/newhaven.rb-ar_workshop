class Delivery < ActiveRecord::Base

  belongs_to :account
  belongs_to :charge

end
