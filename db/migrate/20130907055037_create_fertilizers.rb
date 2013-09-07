class CreateFertilizers < ActiveRecord::Migration
  def change
    create_table :fertilizers do |t|
      t.string :name

      t.timestamps
    end
  end
end
