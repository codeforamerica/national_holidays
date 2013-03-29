# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :holiday do
    name "MyString"
    occurs_on "2013-03-29"
  end
end
