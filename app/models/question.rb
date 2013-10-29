class Question < ActiveRecord::Base
  belongs_to :section
  has_many :answers
  accepts_nested_attributes_for :answers

  # after_create :add_answers

  # def add_answers
  # 	(1..5).each do |n|
  # 		answers.create(answer_value: n)
  # 	end
  # end
  


end