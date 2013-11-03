class UsersController < ApplicationController

  def index
    @users = User.all
  end

  # def new
  #   @user = User.new
  #   enable :sessions
  #   p session[:id] = @user[:id]
  # end

  def create
    @create = User.create(params[:user])
    redirect_to questions_path
  end



end