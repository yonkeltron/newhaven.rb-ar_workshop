Factory.define :account do |f|
  f.sequence(:name) {|n| "Company #{n}" }
  f.employees { rand(1000) }
  f.uuid { UUID.new.generate }
  f.sequence(:phone_number) {|n| "#{n % 10}0#{n % 10}-555-#{n % 10}42#{n % 10}" }
end
