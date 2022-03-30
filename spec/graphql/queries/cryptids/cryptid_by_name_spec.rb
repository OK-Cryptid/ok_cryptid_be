require 'rails_helper'

module Queries
  RSpec.describe CryptidByName, type: :request do
    describe '.resolve' do
      it 'returns a cryptid by name' do
        create(:cryptid, name: 'Big Foot')

        result = OkCryptidBeSchema.execute(cryptid_by_name_query).as_json
        expect(result['data']['cryptidByName']['name']).to eq('Big Foot')
        expect(result['data']['cryptidByName']['description']).to be_a String
        expect(result['data']['cryptidByName']['dangerLevel']).to be_a String
        expect(result['data']['cryptidByName']['range']).to be_a String
        expect(result['data']['cryptidByName']['image']).to be_a String
      end

      it 'returns an error if no cryptid by name' do
        create(:cryptid, name: 'asdawdt')

        result = OkCryptidBeSchema.execute(cryptid_by_name_query).as_json
        expect(result).to have_key('errors')
      end

      it 'returns an error if cryptid name is left blank' do
        create(:cryptid, name: 'asdawdt')

        result = OkCryptidBeSchema.execute(cryptid_by_name_query_blank_name).as_json
        expect(result).to have_key('errors')
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

def cryptid_by_name_query_blank_name
  <<~GQL
    {
      cryptidByName(name: "") {
        name
        description
        dangerLevel
        range
        image
        }
    }
  GQL
end
