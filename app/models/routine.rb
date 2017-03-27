class Routine < ApplicationRecord

  has_many :notes
  belongs_to :user
  belongs_to :habit

end
