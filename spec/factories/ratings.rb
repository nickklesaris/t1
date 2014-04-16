# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rating do
    grouping "MyString"
    rank 1
    score 1.5
  end
end
