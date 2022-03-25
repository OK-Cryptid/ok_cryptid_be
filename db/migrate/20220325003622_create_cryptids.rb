class CreateCryptids < ActiveRecord::Migration[5.2]
  def change
    create_table :cryptids do |t|
      t.string :name
      t.string :range
      t.string :danger_level
      t.string :image

      t.timestamps
    end
  end
end
