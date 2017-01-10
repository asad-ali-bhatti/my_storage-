FactoryGirl.define do
  factory :storage do
    name Faker::Name.first_name
    description Faker::Lorem.sentences
  end
end