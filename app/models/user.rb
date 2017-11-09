class User < ApplicationRecord
  require BCrypt
  # Remember to create a migration!
  has_many :created_surveys, foreign_key: :creator
  has many :choices, foreign_key: :taker
  has many :questions


end
