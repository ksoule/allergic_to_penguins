class Survey < ApplicationRecord
  # Remember to create a migration!
  belongs_to :creator, class_name: "User"
  has_many :questions
  has_many :answer_options, through: :questions
  has many :choices, through: :answer_options
  has many :takers, through: :choices, source: "User"
end
