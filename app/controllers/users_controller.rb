class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to questions_path
    else
      render :something
    end
  end

end
