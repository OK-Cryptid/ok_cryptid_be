require 'faker'

FactoryBot.define do
  factory :sighting do
    association :cryptid, factory: :cryptid
    title { Faker::Games::HalfLife.location }
    location { Faker::Address.state }
    description { Faker::Lorem.sentence(word_count: 5) }
    image { Faker::LoremFlickr.image(seach_terms: ['cryptid']) }
  end
end
