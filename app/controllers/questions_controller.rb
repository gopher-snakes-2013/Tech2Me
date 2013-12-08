class QuestionsController < ApplicationController

  def index
    @questions = Question.all
    @question = Question.new
  end

  def new
    @question = Question.new
  end

  def create
    @question = current_user.questions.build(params[:question])
    if @question.save
      p "YAY"
    else
      p "NOOOOOOOOOOOOO"
    end
    render :json => render_to_string(:partial => 'question', :locals => {:question => @question }).to_json
  end

  def show
    @answer = Answer.new
    @question = Question.find(params[:id])
    @answers = @question.answers
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    question = Question.find(params[:id])
    question.update_attributes(params[:question])
    redirect_to root_path
  end

end
