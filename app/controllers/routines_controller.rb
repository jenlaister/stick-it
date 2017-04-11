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
    if @routine.has_today_progress?
      flash[:alert] = "You've already logged your progress for today."
    else
      @note = Note.new(comment: params[:notes][:Notes], routine_id: @routine.id)
      @note.progress(complete: params[:streak][:Completed].to_i)
      @routine.notes << @note
    end
    if @note.routine.streak >= 21
      flash[:alert] = "Yay! Congrats, you've successfully made a habit!"
    end
    redirect_to @routine
  end

  def destroy
    find_routine
    @routine = Routine.destroy
    redirect_to @routine
  end


  private

  def find_routine
    @routine = Routine.find(params[:id])
  end


end
