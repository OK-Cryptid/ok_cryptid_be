require 'rails_helper'

RSpec.describe Cryptid, type: :model do
  describe 'relationships' do
    it { should have_many :sightings }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:range) }
    it { should validate_presence_of(:danger_level) }
    it { should validate_presence_of(:image) }
    it { should validate_presence_of(:description) }
  end

  describe 'search_name method' do
    it 'returns all cryptids that match the key word' do
      cryptid1 = create(:cryptid, name: 'big')
      cryptid2 = create(:cryptid, name: 'Bigger')
      result = Cryptid.search_name('big')
      expect(result).to eq([cryptid1, cryptid2])
    end

    it 'returns empty array if no match for keyword' do
      create(:cryptid, name: 'big')
      result = Cryptid.search_name('hello')
      expect(result).to eq([])
    end

    it 'returns empty array if keyword is blank' do
      create(:cryptid, name: 'big')
      result = Cryptid.search_name('')
      expect(result).to eq([])
    end
  end

  describe 'search_range method' do
    it 'returns all cryptids that match the keyword' do
      cryptid1 = create(:cryptid, range: 'California')
      cryptid2 = create(:cryptid, range: 'Virginia')
      result = Cryptid.search_range('ia')
      expect(result).to eq([cryptid1, cryptid2])
    end

    it 'returns empty array if no match for keyword' do
      create(:cryptid, range: 'Colorado')
      result = Cryptid.search_range('hello')
      expect(result).to eq([])
    end

    it 'returns empty array if keyword is blank' do
      create(:cryptid, range: 'Colorado')
      result = Cryptid.search_range('')
      expect(result).to eq([])
    end
  end
end
