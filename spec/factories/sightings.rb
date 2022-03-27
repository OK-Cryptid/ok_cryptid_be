require 'faker'

FactoryBot.define do
  factory :sighting do
    association :cryptid, factory: :cryptid
    location { Faker::Address.state }
    description { Faker::Lorem.sentence(word_count: 5) }
    image { Faker::LoremFlickr.image(search_terms: ['cryptid']) }
  end
end
