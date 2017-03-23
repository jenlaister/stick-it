class User < ApplicationRecord

  has_many :habits, through: :routine
  has_many :routines

end
