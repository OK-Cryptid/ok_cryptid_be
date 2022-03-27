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
end
