class User < ApplicationRecord

  has_secure_password

  has_many :routines
  has_many :habits, through: :routines

  def display_name
    self.username.capitalize
  end

end
