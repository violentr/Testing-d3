class CreateAnswersWheels < ActiveRecord::Migration
  def change
    create_table :answers_wheels do |t|
      t.belongs_to :answer, index: true
      t.belongs_to :wheel, index: true
    end
  end
end
