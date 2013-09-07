class AddCaredifficultyIdToPlant < ActiveRecord::Migration
  def change
    add_column :plants, :caredifficulties_id, :integer
  end
end
