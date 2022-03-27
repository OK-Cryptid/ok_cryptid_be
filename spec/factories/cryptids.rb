FactoryBot.define do
  factory :cryptid do
    name { Faker::Games::Witcher.monster }
    range { Faker::Address.state }
    danger_level { Faker::Number.between(from: 1, to: 10) }
    description { Faker::Fantasy::Tolkien.poem }
    image { Faker::LoremFlickr.image(search_terms: ['cryptid']) }
  end
end
