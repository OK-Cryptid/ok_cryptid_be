class ChangeSightingLocationColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :sightings, :latitude
    remove_column :sightings, :longitude
    add_column :sightings, :location, :string
  end
end
