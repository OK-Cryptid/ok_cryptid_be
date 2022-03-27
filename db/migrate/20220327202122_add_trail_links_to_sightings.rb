class AddTrailLinksToSightings < ActiveRecord::Migration[5.2]
  def change
    add_column :sightings, :trail_links, :string, array: true
  end
end
