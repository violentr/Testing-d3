class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :section_name
      t.belongs_to :section, index: true

      t.timestamps
    end
  end
end
