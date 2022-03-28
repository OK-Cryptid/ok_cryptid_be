require 'rails_helper'

module Queries
  RSpec.describe CryptidByName, type: :request do
    describe '.resolve' do
      it 'returns a cryptid by name' do
        create(:cryptid, name: 'Big Foot')

        result = OkCryptidBeSchema.execute(cryptid_by_name_query).as_json
        expect(result['data']['cryptidByName']['name']).to eq("Big Foot")
        expect(result['data']['cryptidByName']["description"]).to be_a String
        expect(result['data']['cryptidByName']['dangerLevel']).to be_a String
        expect(result['data']['cryptidByName']['range']).to be_a String
        expect(result['data']['cryptidByName']['image']).to be_a String
      end
    end
  end
end

def cryptid_by_name_query
  <<~GQL
    {
      cryptidByName(name: "Big Foot") {
        name
        description
        dangerLevel
        range
        image
        }
    }
  GQL
end
