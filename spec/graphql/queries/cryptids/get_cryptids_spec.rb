require 'rails_helper'

RSpec.describe Types::QueryType do
  describe 'display cryptids' do
    it 'can query all users' do
      create(:cryptid, name: 'Big Foot')
      create_list(:cryptid, 4)

      result = OkCryptidBeSchema.execute(query).as_json
      expect(result['data']['getCryptids'].count).to eq(5)
      expect(result['data']['getCryptids'].first['name']).to eq('Big Foot')

      cryptids = Cryptid.all
      expect(result.dig('data', 'getCryptids')).to match_array(
        cryptids.map do |cryptid|
          {
            'name' => cryptid.name,
            'description' => cryptid.description,
            'dangerLevel' => cryptid.danger_level.to_s,
            'range' => cryptid.range,
            'image' => cryptid.image
          }
        end
      )
    end
  end
end

def query
  <<~GQL
    {
      getCryptids {
        name
        description
        dangerLevel
        range
        image
        }
    }
  GQL
end
