class NotesController < ApplicationController

  def new
    @note = Note.new
  end

  def create
    # binding.pry
    @note = Note.new(note_params)
    @note.save
    redirect_to notes_path
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

  private

  def note_params
    params.require(:note).permit(:routine_id, :comment)
  end

  def find_note
    @note = Note.find(params[:id])
  end

end
