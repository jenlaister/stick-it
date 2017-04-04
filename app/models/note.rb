class Note < ApplicationRecord

  belongs_to :routine
  # validate :one_note_per_day, :on => :new, :completed
  # scope :note_limit, -> { where(:created_at => (Time.now.beginning_of_day..Time.now.end_of_day)) }


  def progress(complete:)
    if complete == 1
      self.routine.streak += 1
    else
      self.routine.streak.reset
    end
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
