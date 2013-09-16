class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :plant
      t.integer :vote

      t.timestamps
    end
    add_index :votes, :plant_id
  end
end
