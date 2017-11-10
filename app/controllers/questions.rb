get '/questions/new' do
  erb :'/questions/new'
end


post '/questions' do
  @question = Question.new(params[:question])
  if @question.save
  redirect "/answers"
  else
    @errors = @question.errors.full_messages
    erb :'/questions/new'
  end
end
