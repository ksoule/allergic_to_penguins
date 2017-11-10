User.destroy_all
Choice.destroy_all
Survey.destroy_all
Question.destroy_all
Answer.destroy_all

User.create!(username: "user", email: "a@a.com", password: "password")
User.create!(username: "Tomtom", email: "tom@tom.com", password: "tomtomtom")

Survey.create!(title: "Initial Test", creator_id: "1")

Question.create!(id: 1, text: "What is your favorite candy?", survey_id: 1)
Question.create!(id: 2, text: "Favorite holiday?", survey_id: 1)

Answer.create!(text: "Hershey's", question_id: 1)
Answer.create!(text: "Milky Way", question_id: 1)
Answer.create!(text: "Sour Patch Kids", question_id: 1)
Answer.create!(text: "Reese's Pieces", question_id: 1)
Answer.create!(text: "Skittles", question_id: 1)

Answer.create!(text: "Halloween", question_id: 2)
Answer.create!(text: "Christmas", question_id: 2)
Answer.create!(text: "Memorial Day", question_id: 2)
Answer.create!(text: "New Year's Eve", question_id: 2)
Answer.create!(text: "Thanksgiving", question_id: 2)

Choice.create!(chooser_id: 2, answer_id: "1")
Choice.create!(chooser_id: 2, answer_id: "2")


