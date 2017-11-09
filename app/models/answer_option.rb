class AnswerOption < ApplicationRecord
  # Remember to create a migration!
  belongs_to :question
  has_one :choice
  has_many :takers, through: :choices


end
