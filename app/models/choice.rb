class Choice < ApplicationRecord
  belongs_to :chooser, class_name: "User"
  belongs_to :answer
end
