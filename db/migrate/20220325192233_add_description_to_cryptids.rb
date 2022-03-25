class AddDescriptionToCryptids < ActiveRecord::Migration[5.2]
  def change
    add_column :cryptids, :description, :string
  end
end
