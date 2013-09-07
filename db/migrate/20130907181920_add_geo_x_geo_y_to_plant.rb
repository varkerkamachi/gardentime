class AddGeoXGeoYToPlant < ActiveRecord::Migration
  def change
    add_column :plants, :geoX, :decimal, :precision => 10, :scale => 8
    add_column :plants, :geoY, :decimal, :precision => 10, :scale => 8
  end
end
