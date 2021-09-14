FactoryBot.define do
  factory :tweet do
    image {Faker::Lorem.sentence}
    text {Faker::Lorem.sentence}
    association :user
  end
end
