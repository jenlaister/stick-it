class HabitsController < ApplicationController

  def new
    @habit = Habit.new
  end

  def create
    @habit = Habit.new(habit_params)
    current_user.habits << @habit
    # @habit.save
    redirect_to routines_path
  end

  def show
    find_habit
  end

  def edit
    find_habit
  end

  def update
    find_habit
    @habit = Habit.update(habit_params)
    redirect_to routine_path(@routines)
  end

  def destroy
    find_habit
    @habit = Habit.destroy
    redirect_to @habit
  end

  private

  def habit_params
    params.require(:habit).permit(:routine)
  end

  def find_habit
    @habit = Habit.find(params[:id])
  end

end
