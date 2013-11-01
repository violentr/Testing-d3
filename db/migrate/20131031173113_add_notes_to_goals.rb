class AddNotesToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :notes, :integer
  end
end
