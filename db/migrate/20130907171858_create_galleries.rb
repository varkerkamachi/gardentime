class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.references :plant
      t.string :image1
      t.string :image2
      t.string :image3

      t.timestamps
    end
    add_index :galleries, :plant_id
  end
end
