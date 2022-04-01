class Sighting < ApplicationRecord
  belongs_to :cryptid
  validates :title, :description, :location, presence: true

  def self.location_search(search_term)
    if search_term.blank?
      []
    else
      where("location ILIKE ?", "%#{search_term}%")
    end
  end

end
