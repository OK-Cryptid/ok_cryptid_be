require 'rails_helper'

RSpec.describe Types::QueryType do
  describe 'display cryptid searched by name' do
    it 'can query a single cryptid by name' do
      create(:cryptid, name: 'Bigfoot')

      result = OkCryptidBeSchema.execute(cryptid_by_name_query).as_json
      expect(result['data']['cryptidByName']['name']).to eq("Bigfoot")
      expect(result['data']['cryptidByName']["description"]).to be_a String
      expect(result['data']['cryptidByName']['dangerLevel']).to be_a String
      expect(result['data']['cryptidByName']['range']).to be_a String
      expect(result['data']['cryptidByName']['image']).to be_a String
    end

    it 'returns an error if no cryptid by name' do
      create(:cryptid, name: 'asdawdt')

      result = OkCryptidBeSchema.execute(cryptid_by_name_query).as_json
      expect(result['data']['cryptidByName']).to eq(nil)
    end

    it 'returns an error if cryptid name is left blank' do
      create(:cryptid, name: 'asdawdt')

      result = OkCryptidBeSchema.execute(cryptid_by_name_query_blank_name).as_json
      expect(result['data']['cryptidByName']).to eq(nil)
    end
  end
end

def cryptid_by_name_query
  <<~GQL
    {
      cryptidByName(name: "Bigfoot") {
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
