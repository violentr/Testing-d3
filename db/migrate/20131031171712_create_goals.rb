class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.text :title
      t.belongs_to :section, index: true

      t.timestamps
    end
  end
end
