class PossibleAnswer < ApplicationRecord
  # Remember to create a migration!
  belongs_to :question
  has_many :choices, foreign_key: :answer_id #*****double check this
  has_many :takers, through: :choices, source: "Users"


end
