class QuestionsController < ApplicationController

  def index
    @questions = Question.all
    @question = Question.new
  end


  def new
    @question = Question.new
  end


  def create
    @question = Question.create(params[:question])
    render :json => render_to_string(:partial => 'question', :locals => {:question => @question }).to_json
  end


  def show
    @answer = Answer.new
    @answers = Answer.all
    @question = Question.find(params[:id].to_i)
  end


  def edit
    @question = Question.find(params[:id].to_i)
  end


  def update
    question = Question.find(params[:id])
    question.update_attributes(params[:question])
    redirect_to root_path
  end

end
