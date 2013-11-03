class AnswersController < ApplicationController

  def index
  end

  def create
    @question = Question.find(params[:question_id])
    @answer =
    @question.answers.create(params[:answer])
    redirect_to question_path(@question)
  end

  def update
    @answer = Answer.find(params[:id])
    @answer.update_attributes(params[:answer])
  end

end