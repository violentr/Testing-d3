class Question < ActiveRecord::Base
  belongs_to :section
  has_many :answers
  after_create :add_default_answers

  def add_default_answers
  	{1=>'Strongly disagree', 2=>'Disagree', 3=>'Neither', 4=>'Agree', 5=>'Strongly agree'}.each do |number, text| 
  		answers << Answer.create(answer_value: number, answer_text: text)
  	end
  end

end