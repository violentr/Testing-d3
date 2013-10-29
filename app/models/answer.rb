class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :wheel

  OPTIONS = {1=>'Strongly disagree', 2=>'Disagree', 3=>'Neither disagree nor agree', 4=>'Agree', 5=>'Strongly agree'}

  def self.build_answers(question, wheel)
  	OPTIONS.map do |value,text|
  		Answer.create(answer_value: value, answer_text: text, wheel:wheel, question:question)
  	end
  end


  def self.build_for_all_questions(wheel) # 160 answers to 32 questions
  	Question.all.map{|q| Answer.build_answers(q, wheel)}.flatten
  end
end
