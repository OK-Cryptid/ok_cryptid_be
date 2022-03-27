class RemoveTrailsFromSightings < ActiveRecord::Migration[5.2]
  def change
    remove_column :sightings, :trails, :string
  end
end
