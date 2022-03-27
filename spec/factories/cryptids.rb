FactoryBot.define do
  factory :cryptid do
    name { Faker::TvShows::Supernatural.creature }
    range { Faker::Address.state }
    danger_level { Faker::Number.betwee(from: 1, to: 10) }
    image { Faker::LoremFlickr.image(seach_terms: ['cryptid']) }
  end
end
