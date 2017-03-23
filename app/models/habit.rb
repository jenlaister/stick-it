class Habit < ApplicationRecord

  has_many :routines
  has_many :users, through: :rountines

end
