class Note < ApplicationRecord

  belongs_to :routine

  def content
    self.comment.note
  end

  # def progress
  #   if self.created_at ==
  # end


end
