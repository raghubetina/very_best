FactoryBot.define do

  factory :cuisine do
    name { Faker::Address.state + "#{rand(10000)}" }

    factory :cuisine_with_dishes do
      transient do
        dishes_count 1
      end

      after(:create) do |cuisine, evaluator|
        create_list(:dish, evaluator.dishes_count, cuisine: cuisine)
      end
    end
  end
end
