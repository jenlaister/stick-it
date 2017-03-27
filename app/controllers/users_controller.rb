class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    session[:user_id] = @user.id
    redirect_to @user
  end

  # def edit
  #   current_user
  # end

  def show
    @user = User.find(params[:id])
    redirect_to root_path unless logged_in?
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :email)
  end

end
