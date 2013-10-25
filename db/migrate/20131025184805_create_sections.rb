class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.text :section_name
      t.belongs_to :wheel, index: true

      t.timestamps
    end
  end
end
