class User < ApplicationRecord

  has_secure_password

  has_many :routines
  has_many :habits, through: :routines
  # has_many :progresses, through: :routines
  # has_many :notes, through: :routines

end
