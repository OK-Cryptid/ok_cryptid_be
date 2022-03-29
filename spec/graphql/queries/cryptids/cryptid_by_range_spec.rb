require 'rails_helper'

module Queries
  RSpec.describe CryptidByRange, type: :request do
    describe '.resolve' do
      it 'returns a cryptid by range' do
        create(:cryptid, range: 'Pacific Northwest')

        result = OkCryptidBeSchema.execute(cryptid_by_range_query).as_json
        expect(result['data']['cryptidByRange']['name']).to be_a String
        expect(result['data']['cryptidByRange']["description"]).to be_a String
        expect(result['data']['cryptidByRange']['dangerLevel']).to be_a String
        expect(result['data']['cryptidByRange']['range']).to be_a String
        expect(result['data']['cryptidByRange']['image']).to be_a String
      end

      it 'returns an error if no cryptid by range' do
        create(:cryptid, range: 'Colorado')

        result = OkCryptidBeSchema.execute(cryptid_by_range_query).as_json
        expect(result).to have_key("errors")
      end

      it 'returns an error if cryptid range is left blank' do
        create(:cryptid, range: 'Colorado')

        result = OkCryptidBeSchema.execute(cryptid_by_range_query_blank_name).as_json
        expect(result).to have_key("errors")
      end
    end
  end
end

def cryptid_by_range_query
  <<~GQL
    {
      cryptidByRange(range: "Pacific Northwest") {
        name
        description
        dangerLevel
        range
        image
        }
    }
  GQL
end

def cryptid_by_range_query_blank_name
  <<~GQL
    {
      cryptidByRange(range: "") {
        name
        description
        dangerLevel
        range
        image
        }
    }
  GQL
end
