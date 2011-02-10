Factory.define :charge do |f|
  f.sequence(:name) {|n| "Charge #{n}" }
  f.sequence(:credits) {|n| rand(n * 100) }

  f.association :account
end
