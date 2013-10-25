class CreateWheels < ActiveRecord::Migration
  def change
    create_table :wheels do |t|

      t.timestamps
    end
  end
end
