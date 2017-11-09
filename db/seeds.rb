User.create!(username: "user", email: "a@a.com", password: "password")
User.create!(username: "Tomtom", email: "tom@tom.com", password: "tomtomtom")

Choice.create!(responder_id: "1", answer_id: "")
Choice.create!(responder_id: "2", answer_id: "")
Choice.create!(responder_id: "2", answer_id: "")
Choice.create!(responder_id: "1", answer_id: "")

Survey.create!(title: "Initial Test", creator_id: "1")

Question.create!(text: "What is your favorite candy?", survey_id: "1")
Question.create!(text: "Favorite holiday?", survey_id: "1")

PossibleAnswer.create!(text: "Hershey's", question_id: "1")
PossibleAnswer.create!(text: "Milky Way", question_id: "1")
PossibleAnswer.create!(text: "Sour Patch Kids", question_id: "1")
PossibleAnswer.create!(text: "Reese's Pieces", question_id: "1")
PossibleAnswer.create!(text: "Skittles", question_id: "1")

PossibleAnswer.create!(text: "Halloween", question_id: "2")
PossibleAnswer.create!(text: "Christmas", question_id: "2")
PossibleAnswer.create!(text: "Memorial Day", question_id: "2")
PossibleAnswer.create!(text: "New Year's Eve", question_id: "2")
PossibleAnswer.create!(text: "Thanksgiving", question_id: "2")

