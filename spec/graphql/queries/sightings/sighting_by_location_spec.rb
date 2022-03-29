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

      it 'returns blank if no location entered' do
        create(:sighting, location: 'Denver, CO')

        result = OkCryptidBeSchema.execute(blank_query).as_json

        expect(result['data']['sightingByLocation']).to eq([])
      end
    end
  end
end


def sighting_by_location_query
  <<~GQL
    {
      sightingByLocation(location: "denver") {
        cryptidId
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
        cryptidId
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
        cryptidId
        title
        description
        location
        trailLinks
        image
        }
    }
  GQL
end
