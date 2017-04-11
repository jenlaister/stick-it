class NotesController < ApplicationController

  def new
    @note = Note.new
  end

  def show
    @routine = Routine.find(params[:routine_id])
    find_note
  end

  def create
    @note = Note.find(params[:id])
    if @note.update(note_params)
     if !params[:comment].empty?
      @note = Note.find_or_create_by(params[:comment])
        redirect_to notes_path
       end
     end
   end

  def index
    @notes = Note.all
    @routines = Routine.all
  end



  private

  def note_params
    params.require(:note).permit(:routine_id, :comment)
  end

  def find_note
    @note = Note.find(params[:id])
  end

end
