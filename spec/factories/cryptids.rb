FactoryBot.define do
  factory :cryptid do
    name { Faker::Games::Witcher.monster }
    range { Faker::Address.state }
    danger_level { Faker::Number.between(from: 1, to: 10) }
    image { Faker::LoremFlickr.image(seach_terms: ['cryptid']) }
  end
end
