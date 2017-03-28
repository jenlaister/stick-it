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
    @routine = Routine.find(1)
    current_user
    # find_routine
  end

  def index
    @routines = Routine.all
    current_user
  end

  def edit
    @routine = Routine.find(params[:id])
    # find_routine
  end

  def update
    @routine = Routine.find(params[:id])
    # find_routine
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
    params.require(:routine).require(:note)
  end

  # def find_routine
  #   binding.pry
  #   @routine = Routine.find(params[:id])
  # end


end
