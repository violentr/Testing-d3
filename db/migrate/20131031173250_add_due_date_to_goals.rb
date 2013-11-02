class AddDueDateToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :due_date, :date
  end
end
