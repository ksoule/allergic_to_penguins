class User < ApplicationRecord
  require BCrypt
  # Remember to create a migration!
  has_many :created_surveys, foreign_key: :creator_id
  has_many :choices, foreign_key: :responder_id
  has_many :created_questions, through: :created_surveys
  has_many :answered_questions, through: :choices


end
