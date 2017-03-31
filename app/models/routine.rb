class Routine < ApplicationRecord

  has_many :notes
  belongs_to :user
  belongs_to :habit
  accepts_nested_attributes_for :notes

  def name
    self.habit.routine
  end



end
