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
    @routine = Routine.find(params[:id])
    current_user
    # @routine.notes = params[:routine][:notes] ? params[:routine][:notes] : nil
    # binding.pry
    # @routine.update(routine_params)
    @routine.update(notes: params[:routine][:notes])
    redirect_to @routine
  end

  # @routine = response.dig('routine', 'notes')


  def destroy
    find_routine
    @routine = Routine.destroy
    redirect_to @routine
  end


  private

  def routine_params
    # params.require(:routine).permit(:streak, :notes)
    # binding.pry
    # params.require(:routine).permit(:id, :streak, notes: [:routine][:notes])
  end

  def find_routine
    @routine = Routine.find(params[:id])
  end


end
