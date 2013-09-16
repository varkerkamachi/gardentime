class AddDescriptionToFertilizers < ActiveRecord::Migration
  def change
    add_column :fertilizers, :description, :text
  end
end
