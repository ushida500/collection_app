class UsersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to new_session_path 
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