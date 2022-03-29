require 'rails_helper'

module Queries
  RSpec.describe GetCryptids, type: :request do
    describe '.resolve' do
      it 'returns all cryptids' do
        cryptid = create(:cryptid, name: 'Jackalope')
        create_list(:cryptid, 4)

        result = OkCryptidBeSchema.execute(query).as_json

        expect(result['data']['cryptids'].count).to eq(5)
        expect(result['data']['cryptids'].first['name']).to eq('Big Foot')

        cryptids = Cryptid.all
        expect(result.dig('data', 'cryptids')).to match_array(
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
end

def query
  <<~GQL
    {
     cryptids {
        name
        description
        dangerLevel
        range
        image
        }
    }
  GQL
end
