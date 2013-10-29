class WheelsController < ApplicationController

	def index
	end

	def new
   	@wheel = Wheel.new
    # @wheel.build_answers
	end
	

	def show
    @wheel = Wheel.find(params[:id])
  end

  def create
    @answer_ids = params[:answer].values

    @user = User.find_by_id(params[:user_id])
    @wheel = @user.wheels.build params[:wheel].permit(:answer_id)

    if @wheel.save
      redirect_to @wheel
    else
      render 'new'
    end
  end

# @question = @quiz.questions.build
# 		4.times { @question.answers.build }


end
