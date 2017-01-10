FactoryGirl.define do
  factory :storage do
    name Faker::Name.first_name
    description Faker::Lorem.sentence
  end
end