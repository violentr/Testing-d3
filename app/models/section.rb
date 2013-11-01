class Section < ActiveRecord::Base
  has_many :questions
  has_many :goals
  accepts_nested_attributes_for :questions

  answers.map(&:answer_value).sum
end
