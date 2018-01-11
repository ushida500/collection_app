class UsersController < ApplicationController

  before_action :authorize, only: [:show]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    end
  end

  def edit
  end

  def update
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation) 
  end 

  def destroy
    session[:user_id] = nil
    current_user.destroy
  end
end