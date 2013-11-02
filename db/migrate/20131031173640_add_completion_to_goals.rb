class AddCompletionToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :completion, :boolean
  end
end
