class CreateCaredifficulties < ActiveRecord::Migration
  def change
    create_table :caredifficulties do |t|
      t.string :level

      t.timestamps
    end
  end
end
