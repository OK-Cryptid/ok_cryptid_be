require 'rails_helper'

RSpec.describe Types::QueryType do
  describe 'display sightings' do
    it 'can query all sightings' do
      big_foot = create(:cryptid, name: 'Big Foot')
      big_sighting = create(:sighting, cryptid: big_foot, title: 'Here')
      big_sighting_2 = create(:sighting, cryptid: big_foot, title: 'There')

      result = OkCryptidBeSchema.execute(sighting_query).as_json
      expect(result['data']['sightings'].count).to eq(2)
      expect(result['data']['sightings'].first['cryptid']).to be_a(Hash)
      expect(result['data']['sightings'].first['title']).to be_a(String)
      expect(result['data']['sightings'].first['description']).to be_a(String)
      expect(result['data']['sightings'].first['location']).to be_a(String)
      expect(result['data']['sightings'].first['trailLinks']).to be_an(Array)
      expect(result['data']['sightings'].first['image']).to be_a(String)
    end
  end
end

def sighting_query
  <<~GQL
    {
      sightings {
        cryptid {
        name
        range
        dangerLevel
        image
        id
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
