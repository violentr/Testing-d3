class AddAnswertextToAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :answer_text, :string
  end
end
