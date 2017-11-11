class Question < ApplicationRecord
  # Remember to create a migration!
  belongs_to :survey
  has_many :answers

end
#stats per question {answer.id: answer.choices.count,}
def raw_stats
  data_set = {}
  self.answers.each{|answer|
      data_set[answer.id] = answer.choices.count
    }
  data_set
end



