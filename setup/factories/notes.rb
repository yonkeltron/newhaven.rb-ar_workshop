Factory.define :note do |f|
  f.sequence(:text) {|n| "Note text! #{n} Note text!" }

  f.association :charge
end
