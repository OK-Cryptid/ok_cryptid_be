require 'rails_helper'

module Queries
  RSpec.describe SightingByLocation, type: :request do
    describe '.resolve' do
      it 'returns sightings by location' do
        create(:sighting, location: 'Denver, CO')

        result = OkCryptidBeSchema.execute(sighting_by_location_query).as_json

        expect(result['data']['sightingByLocation'].first['title']).to be_a(String)
      end

      it 'returns blank if no sightings found' do
        create(:sighting, location: 'Denver, CO')

        result = OkCryptidBeSchema.execute(not_found_query).as_json

        expect(result['data']['sightingByLocation']).to eq([])
      end

      it 'returns all sightings if no location entered' do
        create(:sighting, location: 'Denver, CO')

        result = OkCryptidBeSchema.execute(blank_query).as_json

        expect(result['data']['sightingByLocation'].count).to eq(1)
        expect(result['data']['sightingByLocation']).to be_a(Array)
        expect(result['data']['sightingByLocation'][0]).to have_key('title')
        expect(result['data']['sightingByLocation'][0]).to have_key('image')
        expect(result['data']['sightingByLocation'][0]).to have_key('trailLinks')
        expect(result['data']['sightingByLocation'][0]).to have_key('location')
        expect(result['data']['sightingByLocation'][0]).to have_key('description')
      end
    end
  end
end

def sighting_by_location_query
  <<~GQL
    {
      sightingByLocation(location: "denver") {
        cryptid {
        name
        }
        title
        description
        location
        trailLinks
        image
        }
    }
  GQL
end

def not_found_query
  <<~GQL
    {
      sightingByLocation(location: "Manitoba") {
        cryptid {
        name
        }
        title
        description
        location
        trailLinks
        image
        }
    }
  GQL
end

def blank_query
  <<~GQL
    {
      sightingByLocation(location: "") {
        cryptid {
        name
        }
        title
        description
        location
        trailLinks
        image
        }
    }
  GQL
end
