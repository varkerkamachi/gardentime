class AddDescriptionToCareDifficulty < ActiveRecord::Migration
  def change
    add_column :caredifficulties, :description, :text
  end
end
