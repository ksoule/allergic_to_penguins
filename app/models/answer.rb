class Answer < ApplicationRecord
  # Remember to create a migration!
  belongs_to :question
  has_many :choices


end

