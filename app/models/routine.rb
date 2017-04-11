class Routine < ApplicationRecord

  has_many :notes
  belongs_to :user
  belongs_to :habit
  # belongs_to :streak
  accepts_nested_attributes_for :notes

  def name
    self.habit.routine
  end

  def has_today_progress?
    !!self.notes.where(created_at: (Time.now.beginning_of_day.utc..Time.now.end_of_day.utc)).first
  end

  #dependent destroy habit + routine
  #Routine.where({habit_id:7}).destroy_all

  # def content
  #  self.notes.comment
  # end


end
