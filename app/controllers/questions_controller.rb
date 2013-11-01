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
    @answer = Answer.new
    @answers = Answer.all
    @question = Question.find(params[:id].to_i)
  end

  def edit
    @question = Question.find(params[:id].to_i)
  end

end
