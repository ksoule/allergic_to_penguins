class Question < ApplicationRecord
  # Remember to create a migration!
  belongs_to :survey
  has_many :possible_answers
  has_one :creator, through: :survey, source: 'User'
  has_many :choices, through: :possible_answers
  has_many :responders, through: :choices, source: 'User'
end
