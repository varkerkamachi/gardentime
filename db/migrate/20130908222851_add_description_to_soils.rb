class AddDescriptionToSoils < ActiveRecord::Migration
  def change
    add_column :soils, :description, :text
  end
end
