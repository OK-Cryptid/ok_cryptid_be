require 'faker'

FactoryBot.define do
  factory :sighting do
    association :cryptid, factory: :cryptid
    title { Faker::Date.birthday(min_age: 0, max_age: 100) }
    location { Faker::Address.state }
    description { Faker::Lorem.sentence(word_count: 5) }
    image { Faker::LoremFlickr.image(search_terms: ['cryptid']) }
    trail_links { [Faker::Internet.domain_name, Faker::Internet.domain_name, Faker::Internet.domain_name] }
  end
end
