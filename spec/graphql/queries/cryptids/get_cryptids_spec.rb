require 'rails_helper'

module Queries
  RSpec.describe GetCryptids, type: :request do
    describe '.resolve' do
      it 'returns all cryptids' do
        create(:cryptid, name: 'Jackalope')
        create_list(:cryptid, 4)

        result = OkCryptidBeSchema.execute(query).as_json

        expect(result['data']['getCryptids'].count).to eq(5)
        expect(result['data']['getCryptids'].first['name']).to eq('Jackalope')

        all_cryptids = Cryptid.all
        expect(result.dig('data', 'getCryptids')).to match_array(
          all_cryptids.map do |cryptid|
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
