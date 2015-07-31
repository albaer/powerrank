FactoryGirl.define do
  factory :item do
    sequence(:text)  { |n| "Item#{n}" }
    description "blah blah"
    position 1
  end
end