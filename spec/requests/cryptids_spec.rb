require 'rails_helper'

RSpec.describe 'getCryptids request' do
  it 'returns all cryptids' do
    create_list(:cryptid, 4)
    body = '{
      getCryptids {
         name
         description
         dangerLevel
         range
         image
         }
        }'
    post '/graphql', params: { query: body }
    cryptids = JSON.parse(response.body)
    expect(cryptids['data']['getCryptids'].first['name']).to be_a(String)
    expect(cryptids['data']['getCryptids'].first['description']).to be_a(String)
    expect(cryptids['data']['getCryptids'].first['dangerLevel']).to be_a(String)
    expect(cryptids['data']['getCryptids'].first['range']).to be_a(String)
    expect(cryptids['data']['getCryptids'].first['image']).to be_a(String)
  end

  it 'returns a cryptid by ID' do
    create(:cryptid, id: '1')
    body = '{
      cryptidById(id: "1") {
         name
         description
         dangerLevel
         range
         image
         }
        }'
    post '/graphql', params: { query: body }
    cryptid = JSON.parse(response.body)
    expect(cryptid['data']['cryptidById']['name']).to be_a(String)
    expect(cryptid['data']['cryptidById']['description']).to be_a(String)
    expect(cryptid['data']['cryptidById']['dangerLevel']).to be_a(String)
    expect(cryptid['data']['cryptidById']['range']).to be_a(String)
    expect(cryptid['data']['cryptidById']['image']).to be_a(String)
  end

  it 'returns a cryptid by name' do
    create(:cryptid, name: 'Big Foot')
    body = '{
      cryptidByName(name: "Big Foot") {
         name
         description
         dangerLevel
         range
         image
         }
        }'
    post '/graphql', params: { query: body }
    cryptid_name = JSON.parse(response.body)
    expect(cryptid_name['data']['cryptidByName'].first['name']).to be_a(String)
    expect(cryptid_name['data']['cryptidByName'].first['description']).to be_a(String)
    expect(cryptid_name['data']['cryptidByName'].first['dangerLevel']).to be_a(String)
    expect(cryptid_name['data']['cryptidByName'].first['range']).to be_a(String)
    expect(cryptid_name['data']['cryptidByName'].first['image']).to be_a(String)
  end

  it 'returns a cryptid by range' do
    create(:cryptid, range: 'colorado')
    body = '{
      cryptidByRange(range: "colorado") {
         name
         description
         dangerLevel
         range
         image
         }
        }'
    post '/graphql', params: { query: body }
    range = JSON.parse(response.body)
    expect(range['data']['cryptidByName'].first['name']).to be_a(String)
    expect(range['data']['cryptidByName'].first['description']).to be_a(String)
    expect(range['data']['cryptidByName'].first['dangerLevel']).to be_a(String)
    expect(range['data']['cryptidByName'].first['range']).to be_a(String)
    expect(range['data']['cryptidByName'].first['image']).to be_a(String)
  end
end
