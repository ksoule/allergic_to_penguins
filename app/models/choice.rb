class Choice < ApplicationRecord
  # Remember to create a migration!
  belongs_to :question
  belongs_to :taker, class_name: "User"
end
