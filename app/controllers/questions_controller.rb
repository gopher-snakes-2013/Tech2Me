class QuestionsController < ApplicationController

  def index
    @questions = Question.all
    @question = Question.new
  end

  def new
    @question = Question.new
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
    render :json => render_to_string(:partial => 'question', :locals => {:question => @question }).to_json
  end


  def show
    @answer = Answer.new
    @question = Question.find(params[:id].to_i)
    @answers = @question.answers
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
