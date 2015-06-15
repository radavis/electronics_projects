FactoryGirl.define do
  factory :part do
    sequence(:part_number) { |n| "ASDF-10#{n}" }
    sequence(:name) { |n| "The #{part_number} Flux Capacitor" }
  end
end
