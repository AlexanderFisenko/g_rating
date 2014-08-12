# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vote do
    user nil
    girl nil
    value 1
    text "some text"
  end
end
