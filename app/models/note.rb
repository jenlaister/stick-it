class Note < ApplicationRecord

  belongs_to :routine


  def progress(complete:)
    # binding.pry
    if complete == 1
      self.routine.streak += 1
    else
      self.routine.streak.reset
    end
  end


  def content
   self.notes.comment
  end


  #custom validation for 1 note/day
  # def today
  #   if self.comment.last.created_at == today && self.count < 1
  #  errors.add(:base, "You've already logged your progress for today.")
  # end

  #custom validation for a valid completed
  # def completed
  #   today = Time.now.to_date
  #   if !self.routine.streak >= 1 && self.comment.last.created_at.to_date == today
  #   end
  # end


end
