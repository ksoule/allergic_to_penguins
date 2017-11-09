class Choice < ApplicationRecord
  # Remember to create a migration!
  belongs_to :possible_answers, class_name: :possible_answers
  belongs_to :responder, class_name: "User"
end
