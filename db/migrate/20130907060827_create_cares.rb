class CreateCares < ActiveRecord::Migration
  def change
    create_table :cares do |t|
      t.references :plant
      t.integer :sun
      t.string :sun_frequency
      t.integer :water
      t.string :water_frequency
      t.references :soil
      t.integer :optimum_temperature_low
      t.integer :optimum_temperature_high

      t.timestamps
    end
    add_index :cares, :plant_id
    add_index :cares, :soil_id
  end
end
