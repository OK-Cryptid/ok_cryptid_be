require 'rails_helper'

RSpec.describe 'GraphQL', type: :request do
  it "test graphql to post all sightings" do
    big_foot = create(:cryptid, name: 'Big Foot')
    big_sighting = create(:sighting, cryptid: big_foot)
    create_list(:sighting, 4)

    body = '{
      sightings {
        cryptidId
        description
        image
        location
        title
        trailLinks
      }
    }'

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

  it "test graphql to post signle sighting by ID" do
    big_foot = create(:cryptid, name: 'Big Foot', id: 7)
    big_sighting = create(:sighting, cryptid: big_foot, id: 1)

    body = '{
      sightingById(id: 1) {
        cryptidId
        description
        image
        location
        title
        trailLinks
      }
    }'

    post '/graphql', params: {query: body}
    sightings = JSON.parse(response.body, symbolize_names: true)

    expect(sightings[:data][:sightingById][:cryptidId]).to be_a(Integer)
    expect(sightings[:data][:sightingById][:title]).to be_a(String)
    expect(sightings[:data][:sightingById][:description]).to be_a(String)
    expect(sightings[:data][:sightingById][:location]).to be_a(String)
    expect(sightings[:data][:sightingById][:trailLinks]).to be_an(Array)
    expect(sightings[:data][:sightingById][:image]).to be_a(String)
  end

  it "test graphql to post sightings by location" do
    big_foot = create(:cryptid, name: 'Big Foot')
    big_sighting1 = create(:sighting, cryptid: big_foot, location: 'Denver')
    big_sighting2 = create(:sighting, cryptid: big_foot, location: 'Denver')
    big_sighting3 = create(:sighting, cryptid: big_foot, location: 'Cali')

    body = '{ sightingByLocation(location: "denver") {
        cryptidId
        description
        image
        location
        title
        trailLinks
      }
    }'

    post '/graphql', params: {query: body}
    sightings = JSON.parse(response.body, symbolize_names: true)

    expect(sightings[:data][:sightingByLocation].count).to eq(2)
    expect(sightings[:data][:sightingByLocation].first[:cryptidId]).to be_a(Integer)
    expect(sightings[:data][:sightingByLocation].first[:title]).to be_a(String)
    expect(sightings[:data][:sightingByLocation].first[:description]).to be_a(String)
    expect(sightings[:data][:sightingByLocation].first[:location]).to be_a(String)
    expect(sightings[:data][:sightingByLocation].first[:trailLinks]).to be_an(Array)
    expect(sightings[:data][:sightingByLocation].first[:image]).to be_a(String)
  end
end
