class Sighting < ApplicationRecord
  belongs_to :cryptid
  validates :title, :description, :location, presence: true
end
