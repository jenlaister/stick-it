require 'pry'

class SessionsController < ApplicationController

  def new
  end

  def create
  # binding.pry
  @user = User.find_by(username: params[:username])
  if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  else
    flash[:notice] = "Username or password did not match our records."
    render :new
  end
end

# def create
#   binding.pry
#   @user = User.find_by(name: params[:user][:name])
#     if @user != nil && @user.authenticate(params[:user][:password])
#     session[:user_id] = @user.id
#     redirect_to user_path(@user)
#   else
#     redirect_to signin_path
#   end
# end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end


end
