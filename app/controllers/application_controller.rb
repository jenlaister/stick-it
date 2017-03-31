class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def root
    current_user
  end

  def logged_in?
    !!session[:user_id]
  end

  def current_user
    @user = User.find(session[:user_id])
  end

end
