class NotesController < ApplicationController

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(notes_params)
    @note.save
    #redirect_to routine_path(@routine)
  end

  private

  def notes_params
    params.require(:note).permit(:comment)
  end

  def find_note
    @note = Note.find(params[:id])
  end

end
