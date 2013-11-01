class AddPriorityToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :priority, :integer
  end
end
