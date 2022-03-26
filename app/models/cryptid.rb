class Cryptid < ApplicationRecord
  has_many :sightings
  validates :name, :range, :danger_level, :image, :description, presence: :true
end
