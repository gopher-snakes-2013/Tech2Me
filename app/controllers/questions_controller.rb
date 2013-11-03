class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def create
    @question = Question.create(params[:question])
    redirect_to questions_path
  end

  def new
    @question = Question.new
  end

  def show
    @question = Question.find(params[:id])
  end

end
