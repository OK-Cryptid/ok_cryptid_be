class AddColumnToSightings < ActiveRecord::Migration[5.2]
  def change
    add_column :sightings, :title, :string
  end
end
