class Question < ApplicationRecord
  # Remember to create a migration!
  belongs_to :survey
  has_many :answer_options
  has_one :creator, through: :survey
  has_many :choices, through: :answer_options
  has_many :takers, through: :choices
end
