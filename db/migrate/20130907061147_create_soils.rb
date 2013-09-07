class CreateSoils < ActiveRecord::Migration
  def change
    create_table :soils do |t|
      t.string :name
      t.integer :scale

      t.timestamps
    end
  end
end
