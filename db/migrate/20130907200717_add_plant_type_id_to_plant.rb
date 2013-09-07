class AddPlantTypeIdToPlant < ActiveRecord::Migration
  def change
    add_column :plants, :plant_type_id, :integer
  end
end
