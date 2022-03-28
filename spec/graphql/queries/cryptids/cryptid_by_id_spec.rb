require 'rails_helper'

module Queries
  RSpec.describe CryptidById, type: :request do
    describe '.resolve' do
      it 'returns a cryptid by id' do
        cryptid = create(:cryptid, id: '1')

        result = OkCryptidBeSchema.execute(cryptid_by_id_query).as_json

        expect(result['data']['cryptidById']['name']).to be_a String
        expect(result['data']['cryptidById']["description"]).to be_a String
        expect(result['data']['cryptidById']['dangerLevel']).to be_a String
        expect(result['data']['cryptidById']['range']).to be_a String
        expect(result['data']['cryptidById']['image']).to be_a String
      end
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
