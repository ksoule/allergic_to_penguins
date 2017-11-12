class Survey < ApplicationRecord
  # Remember to create a migration!
  belongs_to :creator, class_name: "User"
  has_many :questions

  def survey_stats
    stat_array = []
    self.questions.each{|q|
      question_info = {}
      question_info[q.text] = q.raw_stats
      stat_array << question_info
    }
    stat_array
  end
end
