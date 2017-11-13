get '/surveys/:survey_id/questions/:question_id/answers/new' do
  @survey = Survey.find(params[:survey_id])
  @question = Question.find(params[:question_id])
  erb :'/answers/new'
end


post '/surveys/:survey_id/questions/:question_id/answers' do
  @survey = Survey.find(params[:survey_id])
  @question = Question.find(params[:question_id])
  @answer = @question.answers.new(params[:answer])
  if @answer.save
    if request.xhr?
      erb :'/answers/_form', layout: false
  else
    @errors = @answer.errors.full_messages
    redirect "/surveys/#{@survey.id}/questions/#{@question.id}/answers/new"
    end
  end
end
