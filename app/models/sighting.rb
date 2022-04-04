class Sighting < ApplicationRecord
  belongs_to :cryptid
  validates :title, :description, :location, presence: true

  def self.location_search(search_term)
    where('location ILIKE ?', "%#{search_term}%")
  end
end
