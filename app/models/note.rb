class Note < ApplicationRecord

  belongs_to :routine
  # validate :one_note_per_day


  def progress(complete:)
    if complete == 1
      self.routine.streak += 1
    else
      self.routine.streak.reset
    end
  end

  #custom validation for 1 note/day
  # def one_note_per_day
  # today = Time.now.to_date
  #if @routine.notes.last.created_at == today
  #   self.comment.last.created_at == today
    
  # end


end
