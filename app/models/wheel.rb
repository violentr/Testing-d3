class Wheel < ActiveRecord::Base
	has_many :answers
	accepts_nested_attributes_for :answers
	belongs_to :user

	def build_answers
		answers = Answer.build_for_all_questions(self)
	end


end