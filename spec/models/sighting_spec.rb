require 'rails_helper'

RSpec.describe Sighting, type: :model do
  describe 'relationships' do
    it { should belong_to(:cryptid) }
  end

  describe 'validations' do
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:location) }
  end

  describe 'class methods' do
    describe 'location_search' do
      it 'returns array of sightings by location' do
        sighting1 = create(:sighting, location: 'Denver, CO')
        sighting2 = create(:sighting, location: 'Denver, DE')
        sighting3 = create(:sighting, location: 'Nowhere')

        expect(Sighting.location_search('denver')).to eq([sighting1, sighting2])
        expect(Sighting.location_search('denver')).to_not eq([sighting3])
      end
    end
  end
end
