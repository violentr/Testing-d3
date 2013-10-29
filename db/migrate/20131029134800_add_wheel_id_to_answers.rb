class AddWheelIdToAnswers < ActiveRecord::Migration
  def change
    add_reference :answers, :wheel, index: true
  end
end
