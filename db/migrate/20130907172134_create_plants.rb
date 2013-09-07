class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :name
      t.string :genus
      t.text :description
      t.references :location
      t.references :season
      t.references :gallery

      t.timestamps
    end
    add_index :plants, :location_id
    add_index :plants, :season_id
    add_index :plants, :gallery_id
  end
end
