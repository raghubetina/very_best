FactoryBot.define do
  factory :neighborhood do
    name { Faker::Lorem.word }
    city { Faker::Address.city }
    state { Faker::Address.state }
  end
end
