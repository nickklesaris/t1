# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rating do
    grouping "good"
    rank 3
    score 1.5
  end
end
