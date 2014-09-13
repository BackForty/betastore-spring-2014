# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    name { Faker::Commerce.product_name }
    price { rand(1..100) + 0.99 }
  end
end
