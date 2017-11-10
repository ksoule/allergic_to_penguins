get '/answers/new' do
  erb :'/answers/new'
end


post '/answers' do
  @answer = answer.new(params[:answer])
  if @answer.save
  redirect "/answers"
  else
    @errors = @answer.errors.full_messages
    erb :'/answers/new'
  end
end
