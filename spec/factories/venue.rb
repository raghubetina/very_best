FactoryBot.define do
  factory :venue do
    name { Faker::Lorem.word }
    address { Faker::Address }
  end
end
