class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def logged_in?
    !!session[:user_id]
  end
  
  def current_user
    @user = User.find(sessions[:user_id])
  end

end
