class CreateSightings < ActiveRecord::Migration[5.2]
  def change
    create_table :sightings do |t|
      t.references :cryptid, foreign_key: true
      t.float :latitude
      t.float :longitude
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
