class AddUserIdToWheels < ActiveRecord::Migration
  def change
    add_column :wheels, :user_id, :integer
  end
end
