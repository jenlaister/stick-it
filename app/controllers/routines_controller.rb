class RoutinesController < ApplicationController

  def new
    @routine = Routine.new
  end

  def create
    @routine = Routine.new(routine_params)
    @routine.save
    redirect_to @routine
  end

  def show
    find_routine
    current_user
  end

  def index
    @routines = Routine.all
    current_user
  end

  def edit
    find_routine
  end

  def update
    find_routine
    current_user
    @routine = Routine.update(routine_params)
    redirect_to routine_path(@routine)
  end

  def destroy
    find_routine
    @routine = Routine.destroy
    redirect_to @routine
  end


  private

  def routine_params
    params.require(:routine).permit(:notes, :habit_id, :streak)
  end

  def find_routine
    # binding.pry
    @routine = Routine.find(params[:id])
  end


end
