class AnswersController < ApplicationController

  def create
    @answer = Answer.new
    @answer.author = params[:answer][:author]
    @answer.body = params[:answer][:body]
    current_question = Question.find(params[:answer][:question_id])
    current_question.answers << @answer
    user_who_wrote_answer = User.find(current_user.id)
    user_who_wrote_answer.answers << @answer
    @answer.save
    @answers = Answer.all
    redirect_to question_path(@answer.question)
  end

  def index
    if Answer.where(:user_id => current_user.id)
      @user_answers = Answer.where(:user_id => current_user.id)
    else
      @no_answers = "You do not have any answers, homie. Go answer some questions :)"
    end
  end

  def update
    @answer = Answer.find(params[:id])
    @answer.update_attributes(params[:answer])
  end

end

