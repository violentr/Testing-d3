class WheelsController < ApplicationController

  layout 'questionnaire'
  
	def index
	end

	def new
   	@wheel = Wheel.new
    # @wheel.build_answers
	end
	

	def show
    @wheel = Wheel.find(params[:id])
    @selected_answer_values = @wheel.answers.map(&:answer_value)
    @selected_answer_id = @wheel.answers.map(&:id)
    @selected_answers = @wheel.answers
    @sections =Section.all

  end

  def create
    @wheel = Wheel.new

    # raise params[:answer].inspect
    if params[:answer].nil? || (params[:answer].length < Question.all.count)
      flash[:error] = 'Please fill out all the answers'
      render 'new'
    else
      # @user = User.find(params[:user_id])

      @answer_ids = params[:answer].values


      @answer_ids.each do |answer_id|
        @wheel.answers << Answer.find(answer_id)
      end

      # @user = User.find(params[:user_id])
      # @wheel = @user.wheels.build params[:wheel].permit(:answer_id)
      
      if @wheel.save
        redirect_to @wheel
      else
        flash.now[:error] = @wheel.errors.full_messages.inspect
        render action 'new'
      end
    end
  end


end





