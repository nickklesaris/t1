# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :evaluation_session do
    name "This evaluation session"
    description "Evaluating some stuff"
    item_type "apartment"
  end
end
