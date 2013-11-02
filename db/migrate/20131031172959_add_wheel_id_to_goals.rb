class AddWheelIdToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :wheel_id, :integer
  end
end
