Factory.define :delivery do |f|
  f.sequence(:name) {|n| "Delivery #{n}" }
  f.latitude { rand * 99}
  f.longitude { rand * 99}

  f.association :charge
  f.association :account
end
