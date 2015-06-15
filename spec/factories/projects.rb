FactoryGirl.define do
  factory :project do
    sequence(:name) { |n| "Raspberry Pi Case #{n}" }
    description "Yes, we are making another one of these..."

    factory :project_with_parts do
      transient do
        parts_count 10
      end

      after(:create) do |project, evaluator|
        create_list(:project_part, evaluator.parts_count, project: project)
      end
    end
  end
end
