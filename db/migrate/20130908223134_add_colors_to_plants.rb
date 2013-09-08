class AddColorsToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :colors, :string
  end
end
