require 'rails_helper'

RSpec.describe Types::QueryType do
  describe 'display cryptid searched by Id' do
    it 'can query a single cryptid by id' do
      cryptid = create(:cryptid, id: '1')

      result = OkCryptidBeSchema.execute(cryptid_by_id_query).as_json

      expect(result['data']['cryptidById']['name']).to be_a String
      expect(result['data']['cryptidById']['description']).to be_a String
      expect(result['data']['cryptidById']['dangerLevel']).to be_a String
      expect(result['data']['cryptidById']['range']).to be_a String
      expect(result['data']['cryptidById']['image']).to be_a String
    end

    it 'returns an error if no cryptid by id' do
      create(:cryptid, id: '2')

      result = OkCryptidBeSchema.execute(cryptid_by_id_query).as_json
      expect(result['data']['cryptidById']).to eq(nil)
    end

    it 'returns an error if cryptid idis left blank' do
      create(:cryptid, id: '2')

      result = OkCryptidBeSchema.execute(cryptid_by_id_query_id_blank).as_json
      expect(result['data']['cryptidById']).to eq(nil)
    end
  end
end

def cryptid_by_id_query
  <<~GQL
    {
      cryptidById(id: "1") {
        name
        description
        dangerLevel
        range
        image
        }
    }
  GQL
end

def cryptid_by_id_query_id_blank
  <<~GQL
    {
      cryptidById(id: "") {
        name
        description
        dangerLevel
        range
        image
        }
    }
  GQL
end

