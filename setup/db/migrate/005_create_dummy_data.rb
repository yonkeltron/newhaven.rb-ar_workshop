class CreateDummyData < ActiveRecord::Migration

  def self.up
    Account.transaction do
      613.times do |i|
        account = Factory.create(:account)
        rand(5).times do |i|
          charge = Factory.create(:charge, :account => account)
          delivery = Factory.create(:delivery, :charge => charge, :account => account)
          if i % 2 > 0
            note = Factory.create(:note, :charge => charge)
          end
        end
      end
    end

    Account.all.sample(3).each do |account|
      account.update_attribute(:uuid, nil)
    end
  end

  def self.down
    [Account, Charge, Delivery].each do |model|
      model.all.each(&:destroy)
    end
  end

end
