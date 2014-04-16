# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :evaluation_session do
    name "MyString"
    description "MyText"
    item_type "MyString"
  end
end
