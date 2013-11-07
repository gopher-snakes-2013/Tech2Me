class QuestionsController < ApplicationController

  def index
    @questions = Question.all
    @question = Question.new
  end

  def create
    @question = current_user.questions.build params[:question]
    if @question.save
      p "YAY" #nice!
    else
      p "NOOOOOOOOOOOOO" #sweet!
    end
    render :json => render_to_string(:partial => 'question', :locals => {:question => @question }).to_json
  end


  def show
    @question = Question.find(params[:id].to_i)
    @answer = Answer.new
    @answers = @question.answers
  end


  def edit
    @question = Question.find(params[:id])
  end


  def update
    # you'r'e handling the happy path only.
    question = Question.find(params[:id])
    question.update_attributes(params[:question])
    redirect_to root_path
  end

end
