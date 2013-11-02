class Wheel < ActiveRecord::Base
	has_and_belongs_to_many :answers
	has_many :goals
	belongs_to :user

end