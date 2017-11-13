User.destroy_all
Choice.destroy_all
Survey.destroy_all
Question.destroy_all
Answer.destroy_all

User.create!(username: "user", email: "a@a.com", password: "password")
User.create!(username: "Tomtom", email: "tom@tom.com", password: "tomtomtom")

Survey.create!(title: "Initial Test", creator_id: "1")

Question.create!(text: "What is your favorite candy?", survey_id: 1)
Question.create!(text: "Favorite holiday?", survey_id: 1)

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

# Added this one for scroll testing

User.create(username: "toby", email: "toby@toby.toby", password: "tobytoby")
Survey.create(title: "Sports Questions", creator_id: 3)

Question.create(text: "Who is your favorite college football team?", survey_id: 2) #3
Question.create(text: "Who is your favorite baseball team?", survey_id: 2) #4
Question.create(text: "Who is your favorite hockey team?", survey_id: 2) #5
Question.create(text: "Who is your favorite basketball team?", survey_id: 2) #6
Question.create(text: "Who is your favorite soccer team?", survey_id: 2) #7

Answer.create(text: "Florida Gators", question_id: 3)
Answer.create(text: "South Carolina Gamecocks", question_id: 3)
Answer.create(text: "USC Trojans", question_id: 3)
Answer.create(text: "Alabama Crimson Tide", question_id: 3)

Answer.create(text: "Chicago White Sox", question_id: 4)
Answer.create(text: "Chicago Cubs", question_id: 4)
Answer.create(text: "New York Yankees", question_id: 4)
Answer.create(text: "Los Angeles Dodgers", question_id: 4)

Answer.create(text: "Chicago Blackhawks", question_id: 5)
Answer.create(text: "Nashville Predators", question_id: 5)
Answer.create(text: "Detroit Red Wings", question_id: 5)
Answer.create(text: "Las Vegas Golden Knights", question_id: 5)

Answer.create(text: "Chicago Bulls", question_id: 6)
Answer.create(text: "Cleveland Cavaliers", question_id: 6)
Answer.create(text: "Golden State Warriors", question_id: 6)
Answer.create(text: "Indiana Pacers", question_id: 6)

Answer.create(text: "FC Barcelona", question_id: 7)
Answer.create(text: "Real Madrid CF", question_id: 7)
Answer.create(text: "FC Bayern Munich", question_id: 7)
Answer.create(text: "Manchester United FC", question_id: 7)







