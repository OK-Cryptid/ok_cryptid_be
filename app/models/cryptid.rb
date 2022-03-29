class Cryptid < ApplicationRecord
  has_many :sightings
  validates :name, :range, :danger_level, :image, :description, presence: true

  def self.search_name(search_params)
    if search_params.blank?
      [Cryptid.find_by(name: "#{search_params}")]
    else
      where("name ILIKE ?", "%#{search_params}%")
    end
  end

  def self.search_range(search_params)
    if search_params.blank?
      []
    else
      where("range ILIKE ?", "%#{search_params}%")
    end
  end
end
