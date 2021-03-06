require 'rails_helper'

RSpec.describe Types::QueryType do
  describe 'display sighting searched by Id' do
    it 'can query a single sighting by id' do
      create(:sighting, id: '1')

      result = OkCryptidBeSchema.execute(sighting_by_id_query).as_json

      expect(result['data']['sightingById']['title']).to be_a(String)
      expect(result['data']['sightingById']['description']).to be_a(String)
      expect(result['data']['sightingById']['location']).to be_a(String)
      expect(result['data']['sightingById']['image']).to be_a(String)
      expect(result['data']['sightingById']['trailLinks']).to be_an(Array)
      expect(result['data']['sightingById']['cryptid']).to be_an(Hash)
    end
  end
end

def sighting_by_id_query
  <<~GQL
    {
      sightingById(id: "1") {
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
