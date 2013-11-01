class AnswersController < ApplicationController

  def create
    @answer = Answer.new
    @answer.author = params[:answer][:author]
    @answer.answer = params[:answer][:answer]
    @answer.question = Question.find(params[:answer][:question_id])
    @answer.save

    @answers = Answer.all
    redirect_to question_path(@answer.question)
  end

  def update
    @answer = Answer.find(params[:id])
    @answer.update_attributes(params[:answer])
  end

end