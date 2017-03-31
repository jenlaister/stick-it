class NotesController < ApplicationController

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(comment: [:notes])
    @note.save
    redirect_to @note
  end

  def show
    @routine = Routine.find(params[:routine_id])
    find_note
  end

  def index
    @notes = Note.all
    @routines = Routine.all
    # binding.pry
  end

  # @habit = Habit.new(habit_params)
  # current_user.habits.push(@habit)
  # # @habit.save
  # redirect_to routines_path(@routine)

  private

  # def note_params
  #   params.require(:note).permit(:comment)
  # end

  def find_note
    @note = Note.find(params[:id])
  end

end
