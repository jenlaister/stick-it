class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def root
    @habit = Habit.most_popular_habit
    # current_user
  end

  def logged_in?
    !!session[:user_id]
  end

  def current_user
    @user = User.find(session[:user_id])
  end


  def popular_habit

  end



end
