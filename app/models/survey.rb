class Survey < ApplicationRecord
  # Remember to create a migration!
  belongs_to :creator, class_name: "User"
  has_many :questions

  validates :title, presence: true

  def survey_stats
    stat_array = []
    self.questions.each{|q|
      stat_array << [q.text, q.raw_stats]

    }
    stat_array
  end

end
#Note: stat array returns [q.text, {answer.text: choice.count}, q{answer.id: choice.count, answer.id: choice.count}] the question number is going to be the array position + 1
