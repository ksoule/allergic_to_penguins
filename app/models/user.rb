require 'bcrypt'

class User < ApplicationRecord
  include BCrypt
  # Remember to create a migration!
  has_many :created_surveys, foreign_key: :creator_id
  has_many :choices, foreign_key: :responder_id
  has_many :created_questions, through: :created_surveys
  has_many :answered_questions, through: :choices

  validates_uniqueness_of :username, :email
  validates_presence_of :username, :email
  validate :validate_password

  def password
      @password ||= Password.new(hashed_password)
    end

    def password=(plain_text_password)
      @raw_password = plain_text_password
      @password = Password.create(plain_text_password)
      self.hashed_password = @password
    end

    def authenticate(plain_text_password)
      self.password == plain_text_password
    end

    def validate_password
      if @raw_password.nil?
        errors.add(:password, "is required")
      elsif @raw_password.length < 6
        errors.add(:password, "must be 6 characters or more")
      end
    end


end
