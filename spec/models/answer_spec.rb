require 'spec_helper'

describe Answer do
	it {should belong_to(:wheel)}
	it "builds 5 answers using OPTIONS" do
		answers = Answer.build_answers(Question.new, Wheel.new)
		expect(answers.count).to eq 5
	end
    it "builds up blank answers for each question" do
	  	Question.create(:question=>"Do you participate in activities?")
	  	Question.create(:question=>"Do you use factory girl?")
	  	expect(Answer.build_for_all_questions(Wheel.new).count).to eq 2 * 5
	  	expect(Answer.build_for_all_questions(Wheel.new).first.class).to eq Answer
	  	expect(Answer.build_for_all_questions(Wheel.new).first.question.question).to match /participate in activities/
	  end
end
