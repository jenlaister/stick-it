class Routine < ApplicationRecord

  has_many :notes
  belongs_to :user
  belongs_to :habit
  # belongs_to :streak
  accepts_nested_attributes_for :notes

  def name
    # binding.pry
    self.habit.routine
  end

  # def content
  #  self.notes.comment
  # end


end
