class Survey < ApplicationRecord
  # Remember to create a migration!
  belongs_to :creator, class_name: "User"
  belongs_to :survey
  has_many :questions
  has_many :possible_answers, through: :questions
  has_many :choices, through: :answer_options
  has_many :takers, through: :choices, source: "User"
end
