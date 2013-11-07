class AnswersController < ApplicationController

  def create
    current_question = Question.find(params[:answer][:question_id])
    @answer = current_question.answers.build params[:answer]
    @answer.user = current_user
    if @answer.save
      redirect_to question_path(@answer.question)
    else
      render :soemthing
    end
  end

  def update
    # always happy
    @answer = Answer.find(params[:id])
    @answer.update_attributes(params[:answer])
  end

end

