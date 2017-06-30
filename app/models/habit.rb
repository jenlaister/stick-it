class Habit < ApplicationRecord

  has_many :routines
  has_many :users, through: :routines

  def self.most_popular_habit
    self.all.max_by do |habit|
      habit.users.length
    end
  end

  #count the # of each habit with the most users

end
