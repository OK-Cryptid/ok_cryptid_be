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
end
