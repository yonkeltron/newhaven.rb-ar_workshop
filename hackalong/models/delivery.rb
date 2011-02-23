class Delivery < ActiveRecord::Base
  belongs_to :charge
  belongs_to :account
end
