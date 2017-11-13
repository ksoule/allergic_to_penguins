get '/surveys/:survey_id/questions/new' do
  @survey = Survey.find(params[:survey_id])
  erb :'/questions/new'
end

# get '/surveys/:survey_id/questions/' do
#   @question = Question.new(params[:question])
#   erb :'/questions/new'
# end

post '/surveys/:survey_id/questions' do
  @survey = Survey.find(params[:survey_id])
  @question = @survey.questions.new(params[:question])
  if @question.save
    if request.xhr?
      erb :'answers/_form', layout: false
    else
      redirect "/surveys/#{@survey.id}/questions/#{@question.id}/answers/new"
    end
  else
    @errors = @question.errors.full_messages
    erb :'/questions/new'
  end
end
