class Question < ApplicationRecord
  # Remember to create a migration!
  belongs_to :survey
  has_many :answers

end
