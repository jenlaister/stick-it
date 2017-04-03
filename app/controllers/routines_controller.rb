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
    # binding.pry
    # @routine.update(routine_params)
    @note = Note.new(comment: params[:notes][:Notes], routine_id: @routine.id)
    @note.progress(complete: params[:streak][:Completed].to_i)
    if @note.routine.streak >= 21
      alert('Hey you! You successfully made a habit!') #need to fix the alert
    end
    @routine.notes << @note
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
