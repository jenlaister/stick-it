class Note < ApplicationRecord

  belongs_to :routine

  def content
    self.comment.note
  end

  def progress(complete:)
    today = Time.now.to_date
        if complete == 1
          self.routine.streak += 1
        else
          self.routine.streak.reset
      end
  end

#custom validation for 1 note/day 

end
