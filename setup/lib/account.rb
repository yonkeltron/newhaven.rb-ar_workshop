class Account < ActiveRecord::Base

  has_many :charges
  has_many :deliveries, :through => :charges

end
