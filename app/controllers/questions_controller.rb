class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def create
    @question = Question.new
    @question.title = params[:question][:title]
    @question.body = params[:question][:body]
    User.find(current_user.id).questions << @question
    if @question.save
      p "YAY"
    else
      p "NOOOOOOOOOOOOO"
    end
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

end
