class Cryptid < ApplicationRecord
  has_many :sightings
  validates :name, :range, :danger_level, :image, :description, presence: true


  def self.search(search_params)
    where("name ILIKE ?", "%#{search_params}%").first
  end
end
