require 'rails_helper'

RSpec.describe 'GraphQL', type: :request do
  it "test graphql" do
    big_foot = create(:cryptid, name: 'Big Foot')
    big_sighting = create(:sighting, cryptid: big_foot)
    create_list(:sighting, 4)

    body = "{
    sightings {
      cryptidId
      description
      image
      location
      title
      trailLinks
    }
  }"
  post '/graphql', params: {query: body}
  sightings = JSON.parse(response.body, symbolize_names: true)
  expect(sightings[:data][:sightings].count).to eq(5)
  expect(sightings[:data][:sightings].first[:cryptidId]).to be_a(Integer)
  expect(sightings[:data][:sightings].first[:title]).to be_a(String)
  expect(sightings[:data][:sightings].first[:description]).to be_a(String)
  expect(sightings[:data][:sightings].first[:location]).to be_a(String)
  expect(sightings[:data][:sightings].first[:trailLinks]).to be_an(Array)
  expect(sightings[:data][:sightings].first[:image]).to be_a(String)
  end
end
