class Account < ActiveRecord::Base
  has_many :charges
  has_many :deliveries
  has_many :notes, :through => :charges

  validates_presence_of :uuid
  validates :uuid, :length => {:minimum => 36, :maximum => 36}
end
