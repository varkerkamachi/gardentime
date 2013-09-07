class CreatePlantTypes < ActiveRecord::Migration
  def change
    create_table :plant_types do |t|
      t.string :name
      t.text :features
      t.text :description

      t.timestamps
    end
  end
end
