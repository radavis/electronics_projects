FactoryGirl.define do
  factory :project do
    sequence(:name) { |n| "Raspberry Pi Case #{n}" }
    description "Yes, we are making another one of these..."
  end
end
